import 'input.dart';
import 'pulumirpc/pulumi/alias.pb.dart' as pb;
import 'resource/resource.dart';

class Alias {
  final pb.Alias _pbAlias;

  Alias._internal(this._pbAlias);

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
    if (urn != null) {
      return Alias._internal(pb.Alias()..urn = urn);
    }

    final spec = pb.Alias_Spec(
      name: name?.toString(),
      type: type?.toString(),
      stack: stack?.toString(),
      project: project?.toString(),
    );

    if (parent != null) {
      spec.parentUrn = parent.urn.toString();
    } else if (parentUrn != null) {
      spec.parentUrn = parentUrn.toString();
    } else if (noParent) {
      spec.noParent = true;
    }

    return Alias._internal(pb.Alias()..spec = spec);
  }

  String? get urn => _pbAlias.hasUrn() ? _pbAlias.urn : null;
  String? get name => _pbAlias.hasSpec() ? _pbAlias.spec.name : null;
  String? get type => _pbAlias.hasSpec() ? _pbAlias.spec.type : null;
  String? get stack => _pbAlias.hasSpec() ? _pbAlias.spec.stack : null;
  String? get project => _pbAlias.hasSpec() ? _pbAlias.spec.project : null;
  String? get parentUrn => _pbAlias.hasSpec() && _pbAlias.spec.hasParentUrn() ? _pbAlias.spec.parentUrn : null;
  bool get noParent => _pbAlias.hasSpec() && _pbAlias.spec.hasNoParent() ? _pbAlias.spec.noParent : false;

  pb.Alias toPbAlias() => _pbAlias;
}
