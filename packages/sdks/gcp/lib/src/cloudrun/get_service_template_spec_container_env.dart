// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_template_spec_container_env_value_from.dart';

class GetServiceTemplateSpecContainerEnv {
  /// The name of the Cloud Run Service.
  final pulumi.Input<String> name;
  /// Defaults to "".
  final pulumi.Input<String> value;
  /// Source for the environment variable's value. Only supports secret_key_ref.
  final pulumi.Input<List<GetServiceTemplateSpecContainerEnvValueFrom>> valueFroms;

  /// Creates a new [GetServiceTemplateSpecContainerEnv].
  /// [name] The name of the Cloud Run Service.
  /// [value] Defaults to "".
  /// [valueFroms] Source for the environment variable's value. Only supports secret_key_ref.
  const GetServiceTemplateSpecContainerEnv({
    required this.name,
    required this.value,
    required this.valueFroms,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
      'valueFroms': pulumi.Input.mapInputValue<List<GetServiceTemplateSpecContainerEnvValueFrom>, List<Map<String, dynamic>>>(valueFroms, (value) => pulumi.Input.encodeList<GetServiceTemplateSpecContainerEnvValueFrom, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetServiceTemplateSpecContainerEnv.fromMap(Map<String, dynamic> map) {
    return GetServiceTemplateSpecContainerEnv(
      name: pulumi.Input.fromValue(map['name'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
      valueFroms: pulumi.Input.fromValue(pulumi.Input.decodeList<GetServiceTemplateSpecContainerEnvValueFrom>(map['valueFroms']!, (value) => GetServiceTemplateSpecContainerEnvValueFrom.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

