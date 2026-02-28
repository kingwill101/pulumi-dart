import 'package:test/test.dart';

void main() {
  group('automation pending ports', () {
    test(
      'command runner and version parsing parity',
      () {},
      skip:
          'pending port: pulumi/sdk/nodejs/tests/automation/cmd.spec.ts '
          '+ pulumi/sdk/nodejs/tests/automation/localWorkspace.command.spec.ts '
          '+ pulumi/sdk/python/lib/test/automation/test_cmd.py',
    );

    test(
      'remote workspace parity',
      () {},
      skip:
          'pending port: pulumi/sdk/nodejs/tests/automation/remoteWorkspace.spec.ts '
          '+ pulumi/sdk/python/lib/test/automation/test_remote_workspace.py',
    );

    test(
      'event and error model parity',
      () {},
      skip:
          'pending port: pulumi/sdk/python/lib/test/automation/test_events.py '
          '+ pulumi/sdk/python/lib/test/automation/test_errors.py',
    );
  });
}
