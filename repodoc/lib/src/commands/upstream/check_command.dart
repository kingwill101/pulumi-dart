import 'dart:convert';
import 'dart:io';

import 'package:artisanal/args.dart';
import 'package:artisanal/artisanal.dart' show Colors, Style;
import 'package:artisanal/bubbles.dart' show LinkComponent;

import 'audit_service.dart';
import 'models.dart';

final class UpstreamCheckCommand extends Command<int> {
  UpstreamCheckCommand() {
    argParser
      ..addOption('provider', abbr: 'p', help: 'Audit one provider repository.')
      ..addOption(
        'since',
        defaultsTo: '2026-02-23',
        help: 'Earliest release date to inspect (YYYY-MM-DD).',
      )
      ..addOption(
        'ledger',
        defaultsTo: 'repodoc/upstream_review.json',
        help: 'Review ledger path.',
      )
      ..addFlag(
        'core-only',
        help: 'Audit the core Pulumi SDK repositories only.',
      )
      ..addFlag('details', help: 'Print every flagged release-note entry.')
      ..addFlag('json', help: 'Emit machine-readable JSON.');
  }

  @override
  String get name => 'upstream:check';

  @override
  String get description =>
      'Find unreviewed upstream SDK, runtime, protocol, and overlay changes.';

  @override
  Future<int> run() async {
    final json = option('json') as bool;
    final since = DateTime.parse(option('since')! as String);
    if (!json) {
      io.title('Upstream Pulumi maintenance audit');
      io.info('Inspecting releases published since ${_date(since)}.');
      io.newLine();
    }

    final result = await UpstreamAuditor().audit(
      ledgerPath: option('ledger')! as String,
      since: since,
      provider: option('provider') as String?,
      coreOnly: option('core-only') as bool,
      onSource: json
          ? null
          : (source, index, total) async {
              io.info('[$index/$total] Inspect ${source.repository}');
            },
    );

    if (json) {
      stdout.writeln(
        const JsonEncoder.withIndent('  ').convert(result.toJson()),
      );
    } else {
      _render(result, details: option('details') as bool);
    }
    return 0;
  }

  void _render(UpstreamAuditResult result, {required bool details}) {
    io.newLine();
    io.info(
      'Reviewed ${result.releases} releases from ${result.sources} repositories; '
      'flagged ${result.findings.length} entries.',
    );
    final counts = <(String, String), int>{};
    for (final finding in result.findings) {
      final key = (finding.source, finding.category);
      counts[key] = (counts[key] ?? 0) + 1;
    }
    if (counts.isEmpty) {
      io.success('No relevant unreviewed entries found.');
    } else {
      io.newLine();
      io.table(
        headers: ['Source', 'Category', 'Findings'],
        rows: [
          for (final entry in counts.entries)
            [entry.key.$1, entry.key.$2, '${entry.value}'],
        ],
      );
    }
    if (details) {
      _renderDetails(result.findings);
    } else if (result.findings.isNotEmpty) {
      io.newLine();
      io.info('Run again with --details or --json to inspect every finding.');
    }
  }

  void _renderDetails(List<UpstreamFinding> findings) {
    final bySource = <String, List<UpstreamFinding>>{};
    for (final finding in findings) {
      bySource.putIfAbsent(finding.source, () => []).add(finding);
    }

    io.newLine();
    io.components.rule('Detailed findings');
    for (final sourceEntry in bySource.entries) {
      final sourceFindings = sourceEntry.value;
      final sourceTitle = Style()
          .foreground(Colors.cyan)
          .bold()
          .render('${sourceEntry.key} · ${sourceFindings.length} findings');
      io.section(sourceTitle);
      io.components.definitionList(_categoryCounts(sourceFindings));

      final byRelease = <String, List<UpstreamFinding>>{};
      for (final finding in sourceFindings) {
        byRelease.putIfAbsent(finding.release, () => []).add(finding);
      }
      for (final releaseEntry in byRelease.entries) {
        final releaseFindings = releaseEntry.value;
        final release = releaseFindings.first;
        final link = _terminalLink(release.url, releaseEntry.key);
        final count = Style()
            .foreground(Colors.muted)
            .render(
              '${releaseFindings.length} '
              '${releaseFindings.length == 1 ? 'finding' : 'findings'}',
            );
        io.writeln('  $link  $count');
        io.newLine();

        final byCategory = <String, List<UpstreamFinding>>{};
        for (final finding in releaseFindings) {
          byCategory.putIfAbsent(finding.category, () => []).add(finding);
        }
        for (final categoryEntry in byCategory.entries) {
          final badge = _categoryBadge(categoryEntry.key);
          io.writeln('    $badge');
          for (final finding in categoryEntry.value) {
            io.writeln(_wrappedFinding(finding.summary));
          }
          io.newLine();
        }
      }
      io.components.line();
      io.newLine();
    }
  }

  Map<String, Object> _categoryCounts(List<UpstreamFinding> findings) {
    final counts = <String, int>{};
    for (final finding in findings) {
      counts[finding.category] = (counts[finding.category] ?? 0) + 1;
    }
    return {for (final entry in counts.entries) entry.key: '${entry.value}'};
  }

  String _categoryBadge(String category) {
    final color = switch (category) {
      'protocol' => Colors.magenta,
      'automation' => Colors.blue,
      'codegen' => Colors.cyan,
      'provider-runtime' => Colors.warning,
      'provider-sdk' => Colors.green,
      _ => Colors.info,
    };
    return Style().foreground(color).bold().render(category.toUpperCase());
  }

  String _linkedSummary(String summary) {
    return summary.replaceAllMapped(
      RegExp(
        r'\[([^\]]+)\]\((https?://[^)]+)\)|'
        r'https://github\.com/([^/]+)/([^/]+)/pull/(\d+)',
      ),
      (match) {
        final url = match.group(2) ?? match.group(0)!;
        final label =
            match.group(1) ??
            '${match.group(3)}/${match.group(4)}#${match.group(5)}';
        return _terminalLink(url, label);
      },
    );
  }

  String _terminalLink(String url, String label) {
    final styledLabel = LinkComponent.isSupported
        ? LinkComponent(
            url: url,
            text: label,
            styled: true,
            renderConfig: io.renderConfig,
          ).render()
        : Style().foreground(Colors.info).underline().render(label);
    // ANSI support does not imply OSC-8 support. Keep the raw URL visible so
    // terminals can apply their ordinary URL detection even when OSC-8 is not
    // implemented or is disabled.
    return '$styledLabel ($url)';
  }

  String _wrappedFinding(String summary) {
    final width = (io.terminalWidth - 2).clamp(40, 120);
    final rendered = Style()
        .width(width)
        .paddingLeft(6)
        .render('• ${_linkedSummary(summary)}');
    return rendered.split('\n').map((line) => line.trimRight()).join('\n');
  }

  String _date(DateTime value) =>
      '${value.year.toString().padLeft(4, '0')}-'
      '${value.month.toString().padLeft(2, '0')}-'
      '${value.day.toString().padLeft(2, '0')}';
}
