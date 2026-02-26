import 'input.dart';
import 'output.dart';
import 'pulumirpc/pulumi/alias.pb.dart' as pb;
import 'resource/resource.dart';

class Alias {
  final String? _urn;
  final Input<String>? _name;
  final Input<String>? _type;
  final Input<String>? _stack;
  final Input<String>? _project;
  final Resource? _parent;
  final Input<String>? _parentUrn;
  final bool _noParent;

  Alias._internal({
    String? urn,
    Input<String>? name,
    Input<String>? type,
    Input<String>? stack,
    Input<String>? project,
    Resource? parent,
    Input<String>? parentUrn,
    required bool noParent,
  }) : _urn = urn,
       _name = name,
       _type = type,
       _stack = stack,
       _project = project,
       _parent = parent,
       _parentUrn = parentUrn,
       _noParent = noParent;

  factory Alias({
    String? urn,
    Input<String>? name,
    Input<String>? type,
    Input<String>? stack,
    Input<String>? project,
    Resource? parent,
    Input<String>? parentUrn,
    bool noParent = false,
  }) {
    return Alias._internal(
      urn: urn,
      name: name,
      type: type,
      stack: stack,
      project: project,
      parent: parent,
      parentUrn: parentUrn,
      noParent: noParent,
    );
  }

  String? get urn => _urn;
  Input<String>? get name => _name;
  Input<String>? get type => _type;
  Input<String>? get stack => _stack;
  Input<String>? get project => _project;
  Resource? get parent => _parent;
  Input<String>? get parentUrn => _parentUrn;
  bool get noParent => _noParent;

  Future<String> _resolve(Input<String>? value, String whenUnknown) async {
    if (value == null) {
      return whenUnknown;
    }
    return value.toOutput().getValue(whenUnknown: whenUnknown);
  }

  Future<pb.Alias> serializeAsync() async {
    if (_urn != null) {
      if (_name != null ||
          _type != null ||
          _stack != null ||
          _project != null ||
          _parent != null ||
          _parentUrn != null ||
          _noParent) {
        throw ArgumentError(
          'Alias should not specify both urn and other alias properties',
        );
      }
      return pb.Alias()..urn = _urn;
    }

    final parentCount =
        (_parent != null ? 1 : 0) +
        (_parentUrn != null ? 1 : 0) +
        (_noParent ? 1 : 0);
    if (parentCount >= 2) {
      throw ArgumentError(
        "Only specify one of 'parent', 'parentUrn' or 'noParent' in an Alias",
      );
    }

    final spec = pb.Alias_Spec(
      name: await _resolve(_name, ''),
      type: await _resolve(_type, ''),
      stack: await _resolve(_stack, ''),
      project: await _resolve(_project, ''),
    );

    // Alias spec must only specify one of noParent or parentUrn.
    if (_parent == null && _parentUrn == null) {
      spec.noParent = _noParent;
    } else if (_parent != null) {
      final urn = await _parent.urn.getValue(whenUnknown: '');
      if (urn.isNotEmpty) {
        spec.parentUrn = urn;
      }
    } else {
      final urn = await _resolve(_parentUrn, '');
      if (urn.isNotEmpty) {
        spec.parentUrn = urn;
      }
    }

    return pb.Alias()..spec = spec;
  }
}

Input<String> collapseAliasToUrn(
  Alias alias, {
  required String name,
  required String type,
  Resource? parent,
  required String project,
  required String stack,
}) {
  if (alias.urn case final rawUrn?) {
    return Input.fromValue(rawUrn);
  }

  final parentCount =
      (alias.parent != null ? 1 : 0) +
      (alias.parentUrn != null ? 1 : 0) +
      (alias.noParent ? 1 : 0);
  if (parentCount >= 2) {
    throw ArgumentError(
      "Only specify one of 'parent', 'parentUrn' or 'noParent' in an Alias",
    );
  }

  final nameOutput = alias.name?.toOutput() ?? Output.create(name);
  final typeOutput = alias.type?.toOutput() ?? Output.create(type);
  final stackOutput = alias.stack?.toOutput() ?? Output.create(stack);
  final projectOutput = alias.project?.toOutput() ?? Output.create(project);
  final parentOutput = _resolveAliasParent(alias, parent);

  return Input.fromOutput(
    Output.all<dynamic>([
      parentOutput,
      stackOutput,
      projectOutput,
      typeOutput,
      nameOutput,
    ]).apply(
      (parts) => _createUrn(
        parts[0] as String,
        parts[1] as String,
        parts[2] as String,
        parts[3] as String,
        parts[4] as String,
      ),
    ),
  );
}

Input<String> inheritedChildAlias(
  String childName,
  String parentName,
  Input<String> parentAlias,
  String childType,
) {
  Output<String> aliasName = Output.create(childName);
  if (childName.startsWith(parentName)) {
    aliasName = parentAlias.toOutput().apply((parentAliasUrn) {
      final parentAliasName = parentAliasUrn.substring(
        parentAliasUrn.lastIndexOf('::') + 2,
      );
      return parentAliasName + childName.substring(parentName.length);
    });
  }

  return Input.fromOutput(
    Output.all<dynamic>([aliasName, parentAlias.toOutput()]).apply((parts) {
      final resolvedAliasName = parts[0] as String;
      final parentAliasUrn = parts[1] as String;
      final separatorIndex = parentAliasUrn.lastIndexOf('::');
      if (separatorIndex < 0) {
        throw ArgumentError(
          "Expected parent alias URN '$parentAliasUrn' to contain '::' separators",
        );
      }
      final parentPrefix = '${parentAliasUrn.substring(0, separatorIndex)}\$';
      return '$parentPrefix$childType::$resolvedAliasName';
    }),
  );
}

List<Input<String>> allAliases({
  required List<Alias> childAliases,
  required String childName,
  required String childType,
  required Resource parent,
  required String parentName,
  required String project,
  required String stack,
  List<Input<String>> parentAliases = const [],
}) {
  final aliases = <Input<String>>[];

  for (final childAlias in childAliases) {
    aliases.add(
      collapseAliasToUrn(
        childAlias,
        name: childName,
        type: childType,
        parent: parent,
        project: project,
        stack: stack,
      ),
    );
  }

  for (final parentAlias in parentAliases) {
    aliases.add(
      inheritedChildAlias(childName, parentName, parentAlias, childType),
    );

    for (final childAlias in childAliases) {
      final Input<String> inheritedAlias = Input<String>.fromOutput(
        collapseAliasToUrn(
          childAlias,
          name: childName,
          type: childType,
          parent: parent,
          project: project,
          stack: stack,
        ).toOutput().apply((childAliasUrn) {
          final urnParts = _urnTypeAndName(childAliasUrn);
          return inheritedChildAlias(
            urnParts.name,
            parentName,
            parentAlias,
            urnParts.type,
          ).toOutput().getValue();
        }),
      );
      aliases.add(inheritedAlias);
    }
  }

  return aliases;
}

Output<String> _resolveAliasParent(Alias alias, Resource? defaultParent) {
  if (alias.noParent) {
    return Output.create('');
  }
  if (alias.parent case final aliasParent?) {
    return aliasParent.urn;
  }
  if (alias.parentUrn case final parentUrn?) {
    return parentUrn.toOutput();
  }
  if (defaultParent case final parent?) {
    return parent.urn;
  }
  return Output.create('');
}

({String type, String name}) _urnTypeAndName(String urn) {
  final parts = urn.split('::');
  if (parts.length < 4) {
    throw ArgumentError("Expected URN '$urn' to contain 4 '::' sections");
  }
  final typeParts = parts[2].split('\$');
  return (type: typeParts.last, name: parts[3]);
}

String _createUrn(
  String parent,
  String stack,
  String project,
  String type,
  String name,
) {
  if (parent.isEmpty) {
    return 'urn:pulumi:$stack::$project::$type::$name';
  }
  final separatorIndex = parent.lastIndexOf('::');
  if (separatorIndex < 0) {
    throw ArgumentError(
      "Expected parent URN '$parent' to contain '::' separators",
    );
  }
  final parentPrefix = '${parent.substring(0, separatorIndex)}\$';
  return '$parentPrefix$type::$name';
}
