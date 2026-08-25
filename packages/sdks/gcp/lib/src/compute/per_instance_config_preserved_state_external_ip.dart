// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'per_instance_config_preserved_state_external_ip_ip_address.dart';

class PerInstanceConfigPreservedStateExternalIp {
  /// These stateful IPs will never be released during autohealing, update or VM instance recreate operations. This flag is used to configure if the IP reservation should be deleted after it is no longer used by the group, e.g. when the given instance or the whole group is deleted.
  /// Default value is `NEVER`.
  /// Possible values are: `NEVER`, `ON_PERMANENT_INSTANCE_DELETION`.
  final pulumi.Input<String?>? autoDelete;
  /// The identifier for this object. Format specified above.
  final pulumi.Input<String> interfaceName;
  /// Ip address representation
  /// Structure is documented below.
  final pulumi.Input<PerInstanceConfigPreservedStateExternalIpIpAddress?>? ipAddress;

  /// Creates a new [PerInstanceConfigPreservedStateExternalIp].
  /// [autoDelete] These stateful IPs will never be released during autohealing, update or VM instance recreate operations. This flag is used to configure if the IP reservation should be deleted after it is no longer used by the group, e.g. when the given instance or the whole group is deleted.
  /// [interfaceName] The identifier for this object. Format specified above.
  /// [ipAddress] Ip address representation
  const PerInstanceConfigPreservedStateExternalIp({
    this.autoDelete,
    required this.interfaceName,
    this.ipAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoDelete': ?autoDelete,
      'interfaceName': interfaceName,
      'ipAddress': ?pulumi.Input.mapOptionalInputValue<PerInstanceConfigPreservedStateExternalIpIpAddress, Map<String, dynamic>>(ipAddress, (value) => value.toMap()),
    };
  }

  factory PerInstanceConfigPreservedStateExternalIp.fromMap(Map<String, dynamic> map) {
    return PerInstanceConfigPreservedStateExternalIp(
      autoDelete: (() { final guardedValue = map['autoDelete']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      interfaceName: pulumi.Input.fromValue(map['interfaceName'] as String),
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PerInstanceConfigPreservedStateExternalIpIpAddress.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
