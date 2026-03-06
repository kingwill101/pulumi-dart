// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'options_deploymentmanager_v2beta.dart';

/// CollectionOverride allows resource handling overrides for specific resources within a BaseType
class CollectionOverrideDeploymentmanagerV2beta {
  /// The collection that identifies this resource within its service.
  final pulumi.Input<String>? collection;
  /// The options to apply to this resource-level override
  final pulumi.Input<OptionsDeploymentmanagerV2beta>? options;

  /// Creates a new [CollectionOverrideDeploymentmanagerV2beta].
  /// [collection] The collection that identifies this resource within its service.
  /// [options] The options to apply to this resource-level override
  const CollectionOverrideDeploymentmanagerV2beta({
    this.collection,
    this.options,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collection': ?collection,
      'options': ?pulumi.Input.mapOptionalInputValue<OptionsDeploymentmanagerV2beta, Map<String, dynamic>>(options, (value) => value.toMap()),
    };
  }

  factory CollectionOverrideDeploymentmanagerV2beta.fromMap(Map<String, dynamic> map) {
    return CollectionOverrideDeploymentmanagerV2beta(
      collection: (() { final guardedValue = map['collection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      options: (() { final guardedValue = map['options']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OptionsDeploymentmanagerV2beta.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

