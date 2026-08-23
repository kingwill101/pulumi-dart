import 'dart:convert';
import 'dart:io';

import 'package:artisanal/args.dart';

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
      io.newLine();
      for (final finding in result.findings) {
        io.writeln(
          '${finding.source} ${finding.release} [${finding.category}] '
          '${finding.summary}',
        );
      }
    } else if (result.findings.isNotEmpty) {
      io.newLine();
      io.info('Run again with --details or --json to inspect every finding.');
    }
  }

  String _date(DateTime value) =>
      '${value.year.toString().padLeft(4, '0')}-'
      '${value.month.toString().padLeft(2, '0')}-'
      '${value.day.toString().padLeft(2, '0')}';
}
