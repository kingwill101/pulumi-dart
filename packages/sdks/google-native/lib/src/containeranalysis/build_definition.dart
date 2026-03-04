// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_descriptor.dart';

class BuildDefinition {
  final pulumi.Input<String>? buildType;
  final pulumi.Input<Map<String, String>>? externalParameters;
  final pulumi.Input<Map<String, String>>? internalParameters;
  final pulumi.Input<List<ResourceDescriptor>>? resolvedDependencies;

  /// Creates a new [BuildDefinition].
  /// [buildType] Optional.
  /// [externalParameters] Optional.
  /// [internalParameters] Optional.
  /// [resolvedDependencies] Optional.
  BuildDefinition({
    this.buildType,
    this.externalParameters,
    this.internalParameters,
    this.resolvedDependencies,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'buildType': ?buildType,
      'externalParameters': ?externalParameters,
      'internalParameters': ?internalParameters,
      'resolvedDependencies':
          ?pulumi.Input.mapOptionalInputValue<
            List<ResourceDescriptor>,
            List<Map<String, dynamic>>
          >(
            resolvedDependencies,
            (value) =>
                pulumi.Input.encodeList<
                  ResourceDescriptor,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory BuildDefinition.fromMap(Map<String, dynamic> map) {
    return BuildDefinition(
      buildType: (() {
        final guardedValue = map['buildType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      externalParameters: (() {
        final guardedValue = map['externalParameters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      internalParameters: (() {
        final guardedValue = map['internalParameters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      resolvedDependencies: (() {
        final guardedValue = map['resolvedDependencies'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ResourceDescriptor>(
            guardedValue,
            (value) => ResourceDescriptor.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
