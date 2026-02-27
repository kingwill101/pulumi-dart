import 'package:pulumi/src/store/store.dart';
import 'package:test/test.dart';

void main() {
  group('project_settings parity', () {
    test('writeable options preserve configured project settings values', () {
      final options = WriteableOptions(
        project: 'project-a',
        stack: 'dev',
        organization: 'org-a',
        dryRun: true,
        queryMode: false,
        cacheDynamicProviders: true,
        maximumProcessListeners: 30,
      );

      expect(options.project, equals('project-a'));
      expect(options.stack, equals('dev'));
      expect(options.organization, equals('org-a'));
      expect(options.dryRun, isTrue);
      expect(options.queryMode, isFalse);
      expect(options.cacheDynamicProviders, isTrue);
    });
  });
}
