import 'package:artisanal/args.dart';
import 'package:artisanal/artisanal.dart' show TaskResult;

import 'update_service.dart';

final class PackagesUpdateCommand extends Command<int> {
  PackagesUpdateCommand() {
    argParser
      ..addOption(
        'provider',
        abbr: 'p',
        help: 'Single provider package to update.',
      )
      ..addFlag(
        'allow-same-version',
        help: 'Allow schema content changes without a version increment.',
      );
  }

  @override
  String get name => 'packages:update';
  @override
  String get description =>
      'Safely update and regenerate one provider from its latest release.';

  @override
  Future<int> run() async {
    final provider = option('provider') as String?;
    if (provider == null || provider.trim().isEmpty) {
      io.error('Specify one provider with --provider <name>.');
      return 64;
    }
    final updater = PackageUpdater();
    late PackageUpdatePlan plan;

    io.title('Update provider package');
    await io.task(
      'Resolve latest $provider release and schema',
      run: () async {
        plan = await updater.plan(provider);
        return TaskResult.success;
      },
    );
    updater.validate(
      plan,
      allowSameVersion: option('allow-same-version') as bool,
    );

    io.table(
      headers: ['Provider', 'Current', 'Upstream', 'Package', 'Schema source'],
      rows: [
        [
          plan.provider,
          plan.localPackageVersion,
          plan.upstreamVersion,
          plan.targetPackageVersion,
          plan.schemaSource,
        ],
      ],
    );

    late List<int> schemaBytes;
    await io.task(
      'Download and validate ${plan.provider} schema',
      run: () async {
        schemaBytes = await updater.downloadAndValidate(plan);
        return TaskResult.success;
      },
    );
    await io.task(
      'Regenerate and analyze ${plan.provider}',
      run: () async {
        await updater.apply(plan, schemaBytes);
        return TaskResult.success;
      },
    );

    io.success(
      'Updated ${plan.provider} ${plan.localPackageVersion} -> '
      '${plan.targetPackageVersion}.',
    );
    final stat = await updater.diffStat(plan);
    if (stat.isNotEmpty) {
      io.newLine();
      io.writeln(stat);
    }
    return 0;
  }
}
