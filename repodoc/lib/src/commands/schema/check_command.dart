import 'dart:convert';
import 'dart:io';

import 'package:artisanal/args.dart';
import 'package:artisanal/artisanal.dart' show Colors, TaskResult;

import 'check_service.dart' as service;

final class SchemaCheckCommand extends Command<int> {
  SchemaCheckCommand() {
    argParser
      ..addOption('provider', abbr: 'p', help: 'Check only this provider.')
      ..addOption(
        'manifest',
        help: 'Provider manifest path.',
        defaultsTo: 'packages/sdks/schema_sources.json',
      )
      ..addFlag('pretty', defaultsTo: true, help: 'Pretty-print JSON output.')
      ..addFlag(
        'json',
        help: 'Emit machine-readable JSON instead of the interactive table.',
      )
      ..addFlag('fail-on-drift', help: 'Fail when drift is found.');
  }

  @override
  String get name => 'schema:check';
  @override
  String get description =>
      'Compare committed schemas with upstream Pulumi schemas.';
  @override
  Future<int> run() async {
    final provider = option('provider') as String?;
    final json = option('json') as bool;
    if (!json) {
      io.title('Provider schema drift');
      io.info(
        provider == null
            ? 'Comparing every committed schema with its latest upstream release.'
            : 'Comparing $provider with its latest upstream release.',
      );
      io.newLine();
    }

    final result = await service.checkSchemas(
      provider: provider,
      manifestPath: option('manifest')! as String,
      runReport: json
          ? null
          : (name, index, total, load) async {
              Map<String, dynamic>? report;
              await io.task(
                '[$index/$total] Fetch and compare $name',
                run: () async {
                  report = await load();
                  return TaskResult.success;
                },
              );
              return report!;
            },
    );

    if (json) {
      final output = result.output(singleProvider: provider != null);
      stdout.writeln(
        option('pretty') as bool
            ? const JsonEncoder.withIndent('  ').convert(output)
            : jsonEncode(output),
      );
    } else {
      _renderTable(result.reports);
      if (result.hasDrift) {
        io.warn('Schema drift detected. Regenerate the affected packages.');
      } else {
        io.success('All checked provider schemas are current.');
      }
    }

    return (option('fail-on-drift') as bool) && result.hasDrift ? 2 : 0;
  }

  void _renderTable(List<Map<String, dynamic>> reports) {
    String value(Map<String, dynamic> report, String key) {
      final text = report[key]?.toString() ?? '';
      return text.isEmpty ? '—' : text;
    }

    String yesNo(bool value) => value ? 'yes' : 'no';
    String status(Map<String, dynamic> report) {
      final drift = report['drift'] == true;
      final label = drift ? 'DRIFT' : 'CURRENT';
      final color = drift ? Colors.warning : Colors.success;
      return io.style.foreground(color).render(label);
    }

    io.newLine();
    io.table(
      headers: [
        'Provider',
        'Local',
        'Upstream',
        'Package',
        'Source',
        'Version Δ',
        'Content Δ',
        'Status',
      ],
      rows: [
        for (final report in reports)
          [
            value(report, 'provider'),
            value(report, 'local_schema_version'),
            value(report, 'upstream_version'),
            value(report, 'package_version'),
            report['schema_source'] == 'github_release_asset'
                ? 'release'
                : 'registry',
            yesNo(report['upstream_version_changed'] == true),
            yesNo(report['upstream_checksum_changed'] == true),
            status(report),
          ],
      ],
    );
  }
}
