import 'package:pulumi/pulumi.dart';
import 'package:test/test.dart';

void main() {
  group('Alias', () {
    test('serializes empty alias spec with default fields', () async {
      final alias = Alias();

      final serialized = await alias.serializeAsync();

      expect(serialized.hasSpec(), isTrue);
      expect(serialized.spec.name, isEmpty);
      expect(serialized.spec.type, isEmpty);
      expect(serialized.spec.project, isEmpty);
      expect(serialized.spec.stack, isEmpty);
      expect(serialized.spec.parentUrn, isEmpty);
      expect(serialized.spec.noParent, isFalse);
    });

    test('serializes urn alias', () async {
      final alias = Alias(urn: 'urn:pulumi:dev::proj::pkg:type::name');

      final serialized = await alias.serializeAsync();

      expect(serialized.hasUrn(), isTrue);
      expect(serialized.urn, 'urn:pulumi:dev::proj::pkg:type::name');
    });

    test('serializes spec alias with noParent', () async {
      final alias = Alias(name: Input.fromValue('renamed'), noParent: true);

      final serialized = await alias.serializeAsync();

      expect(serialized.hasSpec(), isTrue);
      expect(serialized.spec.name, 'renamed');
      expect(serialized.spec.noParent, isTrue);
      expect(serialized.spec.parentUrn, isEmpty);
    });

    test('serializes spec alias with type', () async {
      final alias = Alias(type: Input.fromValue('pkg:index:Type'));

      final serialized = await alias.serializeAsync();

      expect(serialized.hasSpec(), isTrue);
      expect(serialized.spec.type, equals('pkg:index:Type'));
      expect(serialized.spec.noParent, isFalse);
      expect(serialized.spec.parentUrn, isEmpty);
    });

    test('serializes spec alias with parent URN', () async {
      final parent = DependencyResource(
        'urn:pulumi:stack::project::pkg:index:Parent::parent',
      );
      final alias = Alias(parent: parent);

      final serialized = await alias.serializeAsync();

      expect(serialized.hasSpec(), isTrue);
      expect(
        serialized.spec.parentUrn,
        equals('urn:pulumi:stack::project::pkg:index:Parent::parent'),
      );
      expect(serialized.spec.noParent, isFalse);
    });

    test('serializes spec alias with explicit parentUrn input', () async {
      final alias = Alias(
        parentUrn: Input.fromValue(
          'urn:pulumi:stack::project::pkg:index:Parent::from-input',
        ),
      );

      final serialized = await alias.serializeAsync();

      expect(serialized.hasSpec(), isTrue);
      expect(
        serialized.spec.parentUrn,
        equals('urn:pulumi:stack::project::pkg:index:Parent::from-input'),
      );
      expect(serialized.spec.noParent, isFalse);
    });

    test('serializes spec alias with stack and project', () async {
      final alias = Alias(
        stack: Input.fromValue('dev'),
        project: Input.fromValue('project-name'),
      );

      final serialized = await alias.serializeAsync();

      expect(serialized.hasSpec(), isTrue);
      expect(serialized.spec.stack, equals('dev'));
      expect(serialized.spec.project, equals('project-name'));
    });

    test('rejects urn mixed with spec fields', () async {
      final alias = Alias(
        urn: 'urn:pulumi:dev::proj::pkg:type::name',
        name: Input.fromValue('renamed'),
      );

      expect(alias.serializeAsync(), throwsArgumentError);
    });

    test('rejects conflicting parent fields in spec serialization', () async {
      final parent = DependencyResource(
        'urn:pulumi:stack::project::pkg:index:Parent::parent',
      );
      final withParentAndNoParent = Alias(parent: parent, noParent: true);
      final withParentAndParentUrn = Alias(
        parent: parent,
        parentUrn: Input.fromValue(
          'urn:pulumi:stack::project::pkg:index:Parent::other',
        ),
      );

      expect(withParentAndNoParent.serializeAsync(), throwsArgumentError);
      expect(withParentAndParentUrn.serializeAsync(), throwsArgumentError);
    });
  });

  group('Alias resolution', () {
    const defaultType = 'kubernetes:storage.k8s.io/v1beta1:CSIDriver';
    const defaultName = 'defName';
    const defaultProject = 'defProject';
    const defaultStack = 'defStack';

    test('plain alias uses default parent', () async {
      final parent = DependencyResource('AnUrn::ASegment');
      final alias = Alias(type: Input.fromValue(defaultType));

      final urn = await collapseAliasToUrn(
        alias,
        name: defaultName,
        type: 'defType',
        parent: parent,
        project: defaultProject,
        stack: defaultStack,
      ).toOutput().getValue();

      expect(urn, 'AnUrn\$$defaultType::defName');
    });

    test('noParent alias emits root urn', () async {
      final parent = DependencyResource('AnUrn::ASegment');
      final alias = Alias(type: Input.fromValue(defaultType), noParent: true);

      final urn = await collapseAliasToUrn(
        alias,
        name: defaultName,
        type: 'defType',
        parent: parent,
        project: defaultProject,
        stack: defaultStack,
      ).toOutput().getValue();

      expect(
        urn,
        'urn:pulumi:defStack::defProject::kubernetes:storage.k8s.io/v1beta1:CSIDriver::defName',
      );
    });

    test('explicit parent overrides default parent', () async {
      final defaultParent = DependencyResource('AnUrn::ASegment');
      final explicitParent = DependencyResource('AParent::AParent');
      final alias = Alias(
        type: Input.fromValue(defaultType),
        parent: explicitParent,
      );

      final urn = await collapseAliasToUrn(
        alias,
        name: defaultName,
        type: 'defType',
        parent: defaultParent,
        project: defaultProject,
        stack: defaultStack,
      ).toOutput().getValue();

      expect(urn, 'AParent\$$defaultType::defName');
    });

    test('parentUrn overrides default parent', () async {
      final defaultParent = DependencyResource('AnUrn::ASegment');
      final alias = Alias(
        type: Input.fromValue(defaultType),
        parentUrn: Input.fromValue('AParent::AParent'),
      );

      final urn = await collapseAliasToUrn(
        alias,
        name: defaultName,
        type: 'defType',
        parent: defaultParent,
        project: defaultProject,
        stack: defaultStack,
      ).toOutput().getValue();

      expect(urn, 'AParent\$$defaultType::defName');
    });

    test('full urn alias returns urn directly', () async {
      const rawUrn = 'urn:pulumi:dev::project::pkg:type::name';
      final alias = Alias(urn: rawUrn);

      final urn = await collapseAliasToUrn(
        alias,
        name: defaultName,
        type: 'defType',
        parent: null,
        project: defaultProject,
        stack: defaultStack,
      ).toOutput().getValue();

      expect(urn, rawUrn);
    });

    test('rejects conflicting parent specifications', () {
      final alias = Alias(
        type: Input.fromValue(defaultType),
        parentUrn: Input.fromValue('AParent::AParent'),
        noParent: true,
      );

      expect(
        () => collapseAliasToUrn(
          alias,
          name: defaultName,
          type: 'defType',
          parent: null,
          project: defaultProject,
          stack: defaultStack,
        ),
        throwsArgumentError,
      );
    });

    test('allAliases rejects malformed parent alias URN shape', () async {
      final parent = DependencyResource('AnUrn::ASegment');
      final aliases = allAliases(
        childAliases: const [],
        childName: 'child',
        childType: defaultType,
        parent: parent,
        parentName: 'parent',
        project: defaultProject,
        stack: defaultStack,
        parentAliases: [Input.fromValue('not-a-valid-urn')],
      );

      await expectLater(
        aliases.first.toOutput().getValue(),
        throwsA(isA<ArgumentError>()),
      );
    });

    test('allAliases rejects malformed child alias URN shape', () async {
      final parent = DependencyResource('AnUrn::ASegment');
      final aliases = allAliases(
        childAliases: [Alias(urn: 'bad-child-urn')],
        childName: 'child',
        childType: defaultType,
        parent: parent,
        parentName: 'parent',
        project: defaultProject,
        stack: defaultStack,
        parentAliases: [Input.fromValue('urn:pulumi:stack::project::pkg:type::parent')],
      );

      await expectLater(
        aliases.last.toOutput().getValue(),
        throwsA(isA<ArgumentError>()),
      );
    });

    test('collapseAliasToUrn rejects malformed parent URN separators', () async {
      final alias = Alias(type: Input.fromValue(defaultType));
      final malformedParent = DependencyResource('malformed-parent');

      await expectLater(
        collapseAliasToUrn(
          alias,
          name: defaultName,
          type: 'defType',
          parent: malformedParent,
          project: defaultProject,
          stack: defaultStack,
        ).toOutput().getValue(),
        throwsArgumentError,
      );
    });

    test(
      'inheritedChildAlias keeps child name when no parent-name prefix',
      () async {
        final inherited = inheritedChildAlias(
          'child',
          'different-parent',
          Input.fromValue('urn:pulumi:stack::project::pkg:index:Parent::alias'),
          'pkg:index:Child',
        );

        expect(
          await inherited.toOutput().getValue(),
          equals(
            'urn:pulumi:stack::project::pkg:index:Parent\$pkg:index:Child::child',
          ),
        );
      },
    );

    test('inheritedChildAlias rejects malformed parent alias URN', () async {
      final inherited = inheritedChildAlias(
        'child',
        'parent',
        Input.fromValue('malformed-parent-urn'),
        'pkg:index:Child',
      );

      await expectLater(inherited.toOutput().getValue(), throwsArgumentError);
    });
  });

  group('create URN parity', () {
    const stack = 'mystack';
    const project = 'myproject';

    test('handles name and type without parent', () async {
      final urn = await collapseAliasToUrn(
        Alias(),
        name: 'n',
        type: 't',
        parent: null,
        project: project,
        stack: stack,
      ).toOutput().getValue();

      expect(urn, equals('urn:pulumi:mystack::myproject::t::n'));
    });

    test('handles name and type with parent', () async {
      final parent = DependencyResource(
        'urn:pulumi:mystack::myproject::my:mod:MyResource::myres',
      );

      final urn = await collapseAliasToUrn(
        Alias(),
        name: 'n',
        type: 't',
        parent: parent,
        project: project,
        stack: stack,
      ).toOutput().getValue();

      expect(
        urn,
        equals('urn:pulumi:mystack::myproject::my:mod:MyResource\$t::n'),
      );
    });

    test('handles name and type with nested parent type chain', () async {
      final parent = DependencyResource(
        'urn:pulumi:mystack::myproject::my:mod:MyParentResource\$my:mod:MyResource::myres-child',
      );

      final urn = await collapseAliasToUrn(
        Alias(),
        name: 'n',
        type: 't',
        parent: parent,
        project: project,
        stack: stack,
      ).toOutput().getValue();

      expect(
        urn,
        equals(
          'urn:pulumi:mystack::myproject::my:mod:MyParentResource\$my:mod:MyResource\$t::n',
        ),
      );
    });
  });
}
