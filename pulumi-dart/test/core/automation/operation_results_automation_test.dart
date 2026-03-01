import 'package:pulumi/automation.dart';
import 'package:test/test.dart';

void main() {
  group('automation update summary parsing', () {
    test(
      'parses summary with typed enums, deployment map, and policy packs',
      () {
        final summary = AutomationUpdateSummary.fromJson(<String, dynamic>{
          'kind': 'update',
          'startTime': '2025-01-01T00:00:00Z',
          'endTime': '2025-01-01T00:01:00Z',
          'message': 'deploy',
          'environment': <String, dynamic>{'PULUMI_HOME': '/tmp'},
          'config': <String, dynamic>{
            'proj:plain': <String, dynamic>{'value': 'v', 'secret': false},
            'proj:secret': <String, dynamic>{'secret': true},
          },
          'result': 'succeeded',
          'version': '42',
          'Deployment': '{"resources":[{"urn":"urn:pulumi:dev::proj::stack"}]}',
          'PolicyPacks': <String, dynamic>{'org/policy-pack': 'v1.2.3'},
          'resourceChanges': <String, dynamic>{'create': '2', 'same': 1.0},
        });

        expect(summary.parsedKind, equals(AutomationUpdateKind.update));
        expect(summary.parsedResult, equals(AutomationUpdateResult.succeeded));
        expect(summary.version, equals(42));
        expect(summary.duration, equals(const Duration(minutes: 1)));
        expect(summary.config['proj:plain']?.value, equals('v'));
        expect(summary.config['proj:plain']?.secret, isFalse);
        expect(summary.config['proj:secret']?.value, equals('[secret]'));
        expect(summary.config['proj:secret']?.secret, isTrue);
        expect(summary.deploymentMap?['resources'], hasLength(1));
        expect(summary.policyPacks['org/policy-pack'], equals('v1.2.3'));
        expect(summary.resourceChanges['create'], equals(2));
        expect(summary.resourceChanges['same'], equals(1));
        expect(
          summary.parsedResourceChanges[AutomationOpType.create],
          equals(2),
        );
        expect(summary.totalResourceChanges, equals(3));
        expect(summary.isSuccessful, isTrue);
      },
    );

    test('accepts lower-case deployment and policy packs fields', () {
      final summary = AutomationUpdateSummary.fromJson(<String, dynamic>{
        'kind': 'refresh',
        'result': 'succeeded',
        'deployment': <String, dynamic>{
          'resources': <Map<String, String>>[
            <String, String>{'urn': 'urn:pulumi:dev::proj::res'},
          ],
        },
        'policyPacks': <String, String>{'org/pack': 'v2.0.0'},
      });

      expect(summary.parsedKind, equals(AutomationUpdateKind.refresh));
      expect(summary.deploymentMap?['resources'], hasLength(1));
      expect(summary.policyPacks['org/pack'], equals('v2.0.0'));
    });

    test('keeps non-json deployment string without parsed map', () {
      final summary = AutomationUpdateSummary.fromJson(<String, dynamic>{
        'kind': 'destroy',
        'result': 'succeeded',
        'Deployment': 'not-json',
      });

      expect(summary.deployment, equals('not-json'));
      expect(summary.deploymentMap, isNull);
    });
  });
}
