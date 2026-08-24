import 'package:artisanal/args.dart';
import 'package:artisanal/artisanal.dart' show TaskResult;

import 'add_service.dart';

final class PackagesAddCommand extends Command<int> {
  PackagesAddCommand() {
    argParser
      ..addOption('provider', abbr: 'p', help: 'Provider package to add.')
      ..addOption(
        'schema-url',
        help: 'Override the Pulumi registry schema URL.',
      );
  }

  @override
  String get name => 'packages:add';
  @override
  String get description =>
      'Add, generate, and analyze a provider package from its schema.';

  @override
  Future<int> run() async {
    final provider = option('provider') as String?;
    if (provider == null || provider.trim().isEmpty) {
      io.error('Specify one provider with --provider <name>.');
      return 64;
    }
    final adder = PackageAdder();
    final plan = adder.plan(
      provider.trim(),
      schemaUrl: option('schema-url') as String?,
    );
    late ({List<int> bytes, String version, String source}) schema;

    io.title('Add provider package');
    await io.task(
      'Download and validate ${plan.provider} schema',
      run: () async {
        schema = await adder.downloadAndValidate(plan);
        return TaskResult.success;
      },
    );
    io.table(
      headers: ['Provider', 'Version', 'Schema source'],
      rows: [
        [plan.provider, schema.version, schema.source],
      ],
    );
    await io.task(
      'Register, generate, and analyze ${plan.provider}',
      run: () async {
        await adder.apply(plan, schema.bytes, schema.version);
        return TaskResult.success;
      },
    );
    io.success('Added ${plan.provider} ${schema.version}.');
    return 0;
  }
}
