// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'options_response_deploymentmanager_v2beta.dart';

/// CollectionOverride allows resource handling overrides for specific resources within a BaseType
class CollectionOverrideResponseDeploymentmanagerV2beta {
  /// The collection that identifies this resource within its service.
  final pulumi.Input<String> collection;
  /// The options to apply to this resource-level override
  final pulumi.Input<OptionsResponseDeploymentmanagerV2beta> options;

  /// Creates a new [CollectionOverrideResponseDeploymentmanagerV2beta].
  /// [collection] The collection that identifies this resource within its service.
  /// [options] The options to apply to this resource-level override
  const CollectionOverrideResponseDeploymentmanagerV2beta({
    required this.collection,
    required this.options,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collection': collection,
      'options': pulumi.Input.mapInputValue<OptionsResponseDeploymentmanagerV2beta, Map<String, dynamic>>(options, (value) => value.toMap()),
    };
  }

  factory CollectionOverrideResponseDeploymentmanagerV2beta.fromMap(Map<String, dynamic> map) {
    return CollectionOverrideResponseDeploymentmanagerV2beta(
      collection: pulumi.Input.fromValue(map['collection'] as String),
      options: pulumi.Input.fromValue(OptionsResponseDeploymentmanagerV2beta.fromMap((map['options']! as Map).cast<String, dynamic>())),
    );
  }
}

