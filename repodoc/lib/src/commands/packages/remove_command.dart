import 'package:artisanal/args.dart';
import 'package:artisanal/artisanal.dart' show TaskResult;
import 'package:path/path.dart' as p;

import 'remove_service.dart';

final class PackagesRemoveCommand extends Command<int> {
  PackagesRemoveCommand() {
    argParser
      ..addMultiOption(
        'provider',
        abbr: 'p',
        help: 'Tracked provider to remove; repeat or comma-separate values.',
        splitCommas: true,
      )
      ..addFlag(
        'yes',
        abbr: 'y',
        help: 'Apply the removal. Without this flag, only show the plan.',
      );
  }

  @override
  String get name => 'packages:remove';

  @override
  String get description =>
      'Remove a provider SDK, schema, examples, and tracking metadata.';

  @override
  Future<int> run() async {
    final providers = (option('provider')! as List<String>)
        .map((provider) => provider.trim())
        .where((provider) => provider.isNotEmpty)
        .toSet()
        .toList();
    if (providers.isEmpty) {
      io.error('Specify at least one provider with --provider <name>.');
      return 64;
    }
    final remover = PackageRemover();
    final plans = providers.map(remover.plan).toList();
    io.title('Remove provider packages');
    io.table(
      headers: ['Provider', 'SDK', 'Schema', 'Examples'],
      rows: [
        for (final plan in plans)
          [
            plan.provider,
            p.relative(plan.packagePath, from: remover.repositoryRoot.path),
            p.relative(plan.schemaPath, from: remover.repositoryRoot.path),
            p.relative(plan.examplesPath, from: remover.repositoryRoot.path),
          ],
      ],
    );
    if (!(option('yes') as bool)) {
      io.warn('Dry run only. Pass --yes to remove these paths.');
      return 0;
    }
    await io.task(
      'Remove ${plans.length} provider package(s) and refresh the workspace',
      run: () async {
        remover.requireClean(plans);
        for (final plan in plans) {
          await remover.apply(
            plan,
            requireClean: false,
            refreshWorkspace: false,
          );
        }
        await remover.refreshWorkspacePackages();
        return TaskResult.success;
      },
    );
    io.success('Removed ${plans.map((plan) => plan.provider).join(', ')}.');
    return 0;
  }
}
