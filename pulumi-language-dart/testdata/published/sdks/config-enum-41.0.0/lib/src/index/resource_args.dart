// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'my_enum.dart';

/// {@template pulumi_index_resource_args_doc}
/// The set of arguments for Resource.
/// {@endtemplate}
/// {@macro pulumi_index_resource_args_doc}
class ResourceArgs {
  final pulumi.Input<MyEnum> theEnum;
  final pulumi.Input<String> theString;

  /// Creates a new [ResourceArgs].
  /// [theEnum] Required.
  /// [theString] Required.
  const ResourceArgs({
    required this.theEnum,
    required this.theString,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'theEnum': pulumi.Input.mapInputValue<MyEnum, String>(theEnum, (value) => value.wireValue),
      'theString': theString,
    };
  }

  factory ResourceArgs.fromMap(Map<String, dynamic> map) {
    return ResourceArgs(
      theEnum: pulumi.Input.fromValue(MyEnum.fromValue(map['theEnum']! as String)),
      theString: pulumi.Input.fromValue(map['theString'] as String),
    );
  }
}
