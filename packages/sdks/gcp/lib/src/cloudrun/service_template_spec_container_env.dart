// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_template_spec_container_env_value_from.dart';

class ServiceTemplateSpecContainerEnv {
  /// Name of the environment variable.
  final pulumi.Input<String?>? name;
  /// Defaults to "".
  final pulumi.Input<String?>? value;
  /// Source for the environment variable's value. Only supports secret_key_ref.
  /// Structure is documented below.
  final pulumi.Input<ServiceTemplateSpecContainerEnvValueFrom?>? valueFrom;

  /// Creates a new [ServiceTemplateSpecContainerEnv].
  /// [name] Name of the environment variable.
  /// [value] Defaults to "".
  /// [valueFrom] Source for the environment variable's value. Only supports secret_key_ref.
  const ServiceTemplateSpecContainerEnv({
    this.name,
    this.value,
    this.valueFrom,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'value': ?value,
      'valueFrom': ?pulumi.Input.mapOptionalInputValue<ServiceTemplateSpecContainerEnvValueFrom, Map<String, dynamic>>(valueFrom, (value) => value.toMap()),
    };
  }

  factory ServiceTemplateSpecContainerEnv.fromMap(Map<String, dynamic> map) {
    return ServiceTemplateSpecContainerEnv(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      valueFrom: (() { final guardedValue = map['valueFrom']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceTemplateSpecContainerEnvValueFrom.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
