// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainMappingSpec {
  /// The mode of the certificate.
  /// Default value is `AUTOMATIC`.
  /// Possible values are: `NONE`, `AUTOMATIC`.
  final pulumi.Input<String>? certificateMode;

  /// If set, the mapping will override any mapping set before this spec was set.
  /// It is recommended that the user leaves this empty to receive an error
  /// warning about a potential conflict and only set it once the respective UI
  /// has given such a warning.
  final pulumi.Input<bool>? forceOverride;

  /// The name of the Cloud Run Service that this DomainMapping applies to.
  /// The route must exist.
  final pulumi.Input<String> routeName;

  /// Creates a new [DomainMappingSpec].
  /// [certificateMode] The mode of the certificate.
  /// [forceOverride] If set, the mapping will override any mapping set before this spec was set.
  /// [routeName] The name of the Cloud Run Service that this DomainMapping applies to.
  DomainMappingSpec({
    this.certificateMode,
    this.forceOverride,
    required this.routeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateMode': ?certificateMode,
      'forceOverride': ?forceOverride,
      'routeName': routeName,
    };
  }

  factory DomainMappingSpec.fromMap(Map<String, dynamic> map) {
    return DomainMappingSpec(
      certificateMode: (() {
        final guardedValue = map['certificateMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      forceOverride: (() {
        final guardedValue = map['forceOverride'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      routeName: pulumi.Input.fromValue(map['routeName'] as String),
    );
  }
}
