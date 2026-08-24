// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_enum/index.dart' as pulumi_enum_index;

/// {@template pulumi_index_resource_args_doc}
/// The set of arguments for Resource.
/// {@endtemplate}
/// {@macro pulumi_index_resource_args_doc}
class ResourceArgs {
  /// External enum value from StringEnum.
  final pulumi.Input<pulumi_enum_index.StringEnum> externalEnum;
  /// Will be used to set in_ and out.
  final pulumi.Input<bool> in_;

  /// Creates a new [ResourceArgs].
  /// [externalEnum] External enum value from StringEnum.
  /// [in_] Will be used to set in_ and out.
  const ResourceArgs({
    required this.externalEnum,
    required this.in_,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'externalEnum': pulumi.Input.mapInputValue<pulumi_enum_index.StringEnum, String>(externalEnum, (value) => value.wireValue),
      'in': in_,
    };
  }

  factory ResourceArgs.fromMap(Map<String, dynamic> map) {
    return ResourceArgs(
      externalEnum: pulumi.Input.fromValue(pulumi_enum_index.StringEnum.fromValue(map['externalEnum']! as String)),
      in_: pulumi.Input.fromValue(map['in'] as bool),
    );
  }
}
