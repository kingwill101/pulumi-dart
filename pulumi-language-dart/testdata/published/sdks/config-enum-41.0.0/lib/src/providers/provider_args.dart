// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../index/my_enum.dart';

/// {@template pulumi_providers_provider_args_doc}
/// The set of arguments for Provider.
/// {@endtemplate}
/// {@macro pulumi_providers_provider_args_doc}
class ProviderArgs {
  final pulumi.Input<MyEnum> aEnum;
  final pulumi.Input<String> aString;

  /// Creates a new [ProviderArgs].
  /// [aEnum] Required.
  /// [aString] Required.
  const ProviderArgs({
    required this.aEnum,
    required this.aString,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aEnum': pulumi.Input.mapInputValue<MyEnum, String>(aEnum, (value) => value.wireValue),
      'aString': aString,
    };
  }

  factory ProviderArgs.fromMap(Map<String, dynamic> map) {
    return ProviderArgs(
      aEnum: pulumi.Input.fromValue(MyEnum.fromValue(map['aEnum']! as String)),
      aString: pulumi.Input.fromValue(map['aString'] as String),
    );
  }
}
