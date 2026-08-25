// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PreventionInspectTemplateInspectConfigMinLikelihoodPerInfoTypeInfoType {
  /// Name of the information type. Either a name of your choosing when creating a CustomInfoType, or one of the names
  /// listed at https://cloud.google.com/dlp/docs/infotypes-reference when specifying a built-in type.
  final pulumi.Input<String> name;
  /// Version name for this InfoType.
  final pulumi.Input<String?>? version;

  /// Creates a new [PreventionInspectTemplateInspectConfigMinLikelihoodPerInfoTypeInfoType].
  /// [name] Name of the information type. Either a name of your choosing when creating a CustomInfoType, or one of the names
  /// [version] Version name for this InfoType.
  const PreventionInspectTemplateInspectConfigMinLikelihoodPerInfoTypeInfoType({
    required this.name,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'version': ?version,
    };
  }

  factory PreventionInspectTemplateInspectConfigMinLikelihoodPerInfoTypeInfoType.fromMap(Map<String, dynamic> map) {
    return PreventionInspectTemplateInspectConfigMinLikelihoodPerInfoTypeInfoType(
      name: pulumi.Input.fromValue(map['name'] as String),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
