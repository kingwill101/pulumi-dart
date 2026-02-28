import 'package:pulumi/automation.dart';
import 'package:test/test.dart';

void main() {
  group('automation version validation', () {
    const minVersion = PulumiVersion(major: 2, minor: 21, patch: 1);

    test('parse handles optional leading v and prerelease', () {
      expect(PulumiVersion.tryParse('v3.97.0'), isNotNull);
      expect(PulumiVersion.tryParse('3.97.0-alpha.1'), isNotNull);
      expect(PulumiVersion.tryParse('invalid'), isNull);
    });

    final cases =
        <
          ({
            String name,
            String currentVersion,
            Pattern? expectedError,
            bool optOut,
          })
        >[
          (
            name: 'higher_major',
            currentVersion: '100.0.0',
            expectedError: 'Major version mismatch.',
            optOut: false,
          ),
          (
            name: 'lower_major',
            currentVersion: '1.0.0',
            expectedError: 'Minimum version requirement failed.',
            optOut: false,
          ),
          (
            name: 'higher_minor',
            currentVersion: 'v2.22.0',
            expectedError: null,
            optOut: false,
          ),
          (
            name: 'lower_minor',
            currentVersion: 'v2.1.0',
            expectedError: 'Minimum version requirement failed.',
            optOut: false,
          ),
          (
            name: 'equal_minor_higher_patch',
            currentVersion: 'v2.21.2',
            expectedError: null,
            optOut: false,
          ),
          (
            name: 'equal_minor_equal_patch',
            currentVersion: 'v2.21.1',
            expectedError: null,
            optOut: false,
          ),
          (
            name: 'equal_minor_lower_patch',
            currentVersion: 'v2.21.0',
            expectedError: 'Minimum version requirement failed.',
            optOut: false,
          ),
          (
            name: 'equal_minor_equal_patch_prerelease',
            currentVersion: 'v2.21.1-alpha.1234',
            expectedError: 'Minimum version requirement failed.',
            optOut: false,
          ),
          (
            name: 'opt_out_of_check_would_fail_otherwise',
            currentVersion: 'v2.20.0',
            expectedError: null,
            optOut: true,
          ),
          (
            name: 'opt_out_of_check_would_succeed_otherwise',
            currentVersion: 'v2.22.0',
            expectedError: null,
            optOut: true,
          ),
          (
            name: 'invalid_version',
            currentVersion: 'invalid',
            expectedError: 'Could not parse the Pulumi CLI version',
            optOut: false,
          ),
          (
            name: 'invalid_version_opt_out',
            currentVersion: 'invalid',
            expectedError: null,
            optOut: true,
          ),
        ];

    for (final entry in cases) {
      test('validates ${entry.name} (${entry.currentVersion})', () {
        PulumiVersion? validate() {
          return parseAndValidatePulumiVersion(
            minVersion,
            entry.currentVersion,
            entry.optOut,
          );
        }

        if (entry.expectedError != null) {
          expect(
            validate,
            throwsA(
              isA<AutomationInvalidVersionException>().having(
                (error) => error.toString(),
                'message',
                contains(entry.expectedError!),
              ),
            ),
          );
          return;
        }

        if (entry.currentVersion == 'invalid' && entry.optOut) {
          expect(validate(), isNull);
          return;
        }
        expect(validate(), isNotNull);
      });
    }
  });
}
