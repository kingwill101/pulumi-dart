import 'package:pulumi/pulumi.dart';
import 'package:test/test.dart';

Alias _aliasFromSpec(Map<String, String> spec) {
  return Alias(
    name: spec.containsKey('name') ? Input.fromValue(spec['name']!) : null,
    type: spec.containsKey('type') ? Input.fromValue(spec['type']!) : null,
  );
}

void main() {
  group('alias inheritance matrix', () {
    const stack = 'stack';
    const project = 'project';
    const parentType = 'test:resource:type';
    const parentName = 'myres';
    const childType = 'test:resource:child';
    const childName = 'myres-child';

    final parent = DependencyResource(
      'urn:pulumi:$stack::$project::$parentType::$parentName',
    );

    final testCases =
        <
          ({
            String name,
            List<Map<String, String>> parentAliases,
            List<Map<String, String>> childAliases,
            List<String> expected,
          })
        >[
          (
            name: 'no aliases',
            parentAliases: const [],
            childAliases: const [],
            expected: const [],
          ),
          (
            name: 'one child alias (type), no parent aliases',
            parentAliases: const [],
            childAliases: const [
              {'type': 'test:resource:child2'},
            ],
            expected: const [
              'urn:pulumi:stack::project::test:resource:type\$test:resource:child2::myres-child',
            ],
          ),
          (
            name: 'one child alias (name), no parent aliases',
            parentAliases: const [],
            childAliases: const [
              {'name': 'child2'},
            ],
            expected: const [
              'urn:pulumi:stack::project::test:resource:type\$test:resource:child::child2',
            ],
          ),
          (
            name: 'one child alias (name), one parent alias (type)',
            parentAliases: const [
              {'type': 'test:resource:type3'},
            ],
            childAliases: const [
              {'name': 'myres-child2'},
            ],
            expected: const [
              'urn:pulumi:stack::project::test:resource:type\$test:resource:child::myres-child2',
              'urn:pulumi:stack::project::test:resource:type3\$test:resource:child::myres-child',
              'urn:pulumi:stack::project::test:resource:type3\$test:resource:child::myres-child2',
            ],
          ),
          (
            name: 'one child alias (name), one parent alias (name)',
            parentAliases: const [
              {'name': 'myres2'},
            ],
            childAliases: const [
              {'name': 'myres-child2'},
            ],
            expected: const [
              'urn:pulumi:stack::project::test:resource:type\$test:resource:child::myres-child2',
              'urn:pulumi:stack::project::test:resource:type\$test:resource:child::myres2-child',
              'urn:pulumi:stack::project::test:resource:type\$test:resource:child::myres2-child2',
            ],
          ),
          (
            name: 'two child aliases, three parent aliases',
            parentAliases: const [
              {'name': 'myres2'},
              {'type': 'test:resource:type3'},
              {'name': 'myres3'},
            ],
            childAliases: const [
              {'name': 'myres-child2'},
              {'type': 'test:resource:child2'},
            ],
            expected: const [
              'urn:pulumi:stack::project::test:resource:type\$test:resource:child::myres-child2',
              'urn:pulumi:stack::project::test:resource:type\$test:resource:child2::myres-child',
              'urn:pulumi:stack::project::test:resource:type\$test:resource:child::myres2-child',
              'urn:pulumi:stack::project::test:resource:type\$test:resource:child::myres2-child2',
              'urn:pulumi:stack::project::test:resource:type\$test:resource:child2::myres2-child',
              'urn:pulumi:stack::project::test:resource:type3\$test:resource:child::myres-child',
              'urn:pulumi:stack::project::test:resource:type3\$test:resource:child::myres-child2',
              'urn:pulumi:stack::project::test:resource:type3\$test:resource:child2::myres-child',
              'urn:pulumi:stack::project::test:resource:type\$test:resource:child::myres3-child',
              'urn:pulumi:stack::project::test:resource:type\$test:resource:child::myres3-child2',
              'urn:pulumi:stack::project::test:resource:type\$test:resource:child2::myres3-child',
            ],
          ),
        ];

    for (final testCase in testCases) {
      test(testCase.name, () async {
        final childAliases = testCase.childAliases.map(_aliasFromSpec).toList();
        final parentAliases = testCase.parentAliases
            .map(_aliasFromSpec)
            .map(
              (alias) => collapseAliasToUrn(
                alias,
                name: parentName,
                type: parentType,
                parent: null,
                project: project,
                stack: stack,
              ),
            )
            .toList();

        final aliases = allAliases(
          childAliases: childAliases,
          childName: childName,
          childType: childType,
          parent: parent,
          parentName: parentName,
          project: project,
          stack: stack,
          parentAliases: parentAliases,
        );

        final aliasUrns = await Future.wait(
          aliases.map((alias) => alias.toOutput().getValue()),
        );
        expect(aliasUrns, equals(testCase.expected));
      });
    }
  });

  group('alias langhost parity cases', () {
    const stack = 'stack';
    const project = 'project';

    test('unusual alias names are preserved in computed URNs', () async {
      const type = 'test:index:MyResource';
      const aliases = <String>[
        'test-alias-name',
        'other:test:alias:name',
        'other!test@alias+name',
      ];

      final results = await Future.wait(
        aliases.map(
          (aliasName) => collapseAliasToUrn(
            Alias(name: Input.fromValue(aliasName)),
            name: '-other@random:resource!name',
            type: type,
            parent: null,
            project: project,
            stack: stack,
          ).toOutput().getValue(),
        ),
      );

      expect(
        results,
        equals([
          'urn:pulumi:stack::project::test:index:MyResource::test-alias-name',
          'urn:pulumi:stack::project::test:index:MyResource::other:test:alias:name',
          'urn:pulumi:stack::project::test:index:MyResource::other!test@alias+name',
        ]),
      );
    });

    test('large child alias counts produce one computed URN per alias', () async {
      const parentType = 'test:resource:type';
      const parentName = 'myres';
      const childType = 'test:resource:child';
      const childName = 'myres-child';

      final parent = DependencyResource(
        'urn:pulumi:$stack::$project::$parentType::$parentName',
      );
      final childAliases = List<Alias>.generate(
        1000,
        (i) => Alias(name: Input.fromValue('my-alias-name-$i')),
        growable: false,
      );

      final aliases = allAliases(
        childAliases: childAliases,
        childName: childName,
        childType: childType,
        parent: parent,
        parentName: parentName,
        project: project,
        stack: stack,
      );

      expect(aliases, hasLength(1000));

      final first = await aliases.first.toOutput().getValue();
      final last = await aliases.last.toOutput().getValue();
      expect(
        first,
        equals(
          'urn:pulumi:stack::project::test:resource:type\$test:resource:child::my-alias-name-0',
        ),
      );
      expect(
        last,
        equals(
          'urn:pulumi:stack::project::test:resource:type\$test:resource:child::my-alias-name-999',
        ),
      );
    });

    test(
      'large alias lineage chains keep parent type information in computed aliases',
      () async {
        const parentTypeChain = 'test:index:MyResource\$test:index:MyResource';
        final parent = DependencyResource(
          'urn:pulumi:$stack::$project::$parentTypeChain::testResource2',
        );

        final childAliases = List<Alias>.generate(
          1000,
          (i) => Alias(
            name: Input.fromValue('my-alias-$i'),
            stack: Input.fromValue('my-stack'),
            project: Input.fromValue('my-project'),
            type: Input.fromValue('test:index:MyOtherResource'),
          ),
          growable: false,
        );

        final aliases = allAliases(
          childAliases: childAliases,
          childName: 'testResource3',
          childType: 'test:index:MyOtherResource',
          parent: parent,
          parentName: 'testResource2',
          project: project,
          stack: stack,
        );

        expect(aliases, hasLength(1000));
        final first = await aliases.first.toOutput().getValue();
        expect(first, contains('test:index:MyResource'));
        expect(
          first,
          equals(
            'urn:pulumi:stack::project::$parentTypeChain\$test:index:MyOtherResource::my-alias-0',
          ),
        );
      },
    );
  });
}
