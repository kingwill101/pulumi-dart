import 'input.dart';
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
      return pb.Alias()..urn = _urn!;
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
      final urn = await _parent!.urn.getValue(whenUnknown: '');
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
