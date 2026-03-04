// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_properties.dart';
import 'location_policy.dart';

/// A transient resource used in compute.instances.bulkInsert and compute.regionInstances.bulkInsert . This resource is not persisted anywhere, it is used only for processing the requests.
class BulkInsertInstanceResource {
  /// The maximum number of instances to create.
  final pulumi.Input<String>? count;

  /// The instance properties defining the VM instances to be created. Required if sourceInstanceTemplate is not provided.
  final pulumi.Input<InstanceProperties>? instanceProperties;

  /// Policy for chosing target zone. For more information, see Create VMs in bulk .
  final pulumi.Input<LocationPolicy>? locationPolicy;

  /// The minimum number of instances to create. If no min_count is specified then count is used as the default value. If min_count instances cannot be created, then no instances will be created and instances already created will be deleted.
  final pulumi.Input<String>? minCount;

  /// The string pattern used for the names of the VMs. Either name_pattern or per_instance_properties must be set. The pattern must contain one continuous sequence of placeholder hash characters (#) with each character corresponding to one digit of the generated instance name. Example: a name_pattern of inst-#### generates instance names such as inst-0001 and inst-0002. If existing instances in the same project and zone have names that match the name pattern then the generated instance numbers start after the biggest existing number. For example, if there exists an instance with name inst-0050, then instance names generated using the pattern inst-#### begin with inst-0051. The name pattern placeholder #...# can contain up to 18 characters.
  final pulumi.Input<String>? namePattern;

  /// Per-instance properties to be set on individual instances. Keys of this map specify requested instance names. Can be empty if name_pattern is used.
  final pulumi.Input<Map<String, String>>? perInstanceProperties;

  /// Specifies the instance template from which to create instances. You may combine sourceInstanceTemplate with instanceProperties to override specific values from an existing instance template. Bulk API follows the semantics of JSON Merge Patch described by RFC 7396. It can be a full or partial URL. For example, the following are all valid URLs to an instance template: - https://www.googleapis.com/compute/v1/projects/project /global/instanceTemplates/instanceTemplate - projects/project/global/instanceTemplates/instanceTemplate - global/instanceTemplates/instanceTemplate This field is optional.
  final pulumi.Input<String>? sourceInstanceTemplate;

  /// Creates a new [BulkInsertInstanceResource].
  /// [count] The maximum number of instances to create.
  /// [instanceProperties] The instance properties defining the VM instances to be created. Required if sourceInstanceTemplate is not provided.
  /// [locationPolicy] Policy for chosing target zone. For more information, see Create VMs in bulk .
  /// [minCount] The minimum number of instances to create. If no min_count is specified then count is used as the default value. If min_count instances cannot be created, then no instances will be created and instances already created will be deleted.
  /// [namePattern] The string pattern used for the names of the VMs. Either name_pattern or per_instance_properties must be set. The pattern must contain one continuous sequence of placeholder hash characters (#) with each character corresponding to one digit of the generated instance name. Example: a name_pattern of inst-#### generates instance names such as inst-0001 and inst-0002. If existing instances in the same project and zone have names that match the name pattern then the generated instance numbers start after the biggest existing number. For example, if there exists an instance with name inst-0050, then instance names generated using the pattern inst-#### begin with inst-0051. The name pattern placeholder #...# can contain up to 18 characters.
  /// [perInstanceProperties] Per-instance properties to be set on individual instances. Keys of this map specify requested instance names. Can be empty if name_pattern is used.
  /// [sourceInstanceTemplate] Specifies the instance template from which to create instances. You may combine sourceInstanceTemplate with instanceProperties to override specific values from an existing instance template. Bulk API follows the semantics of JSON Merge Patch described by RFC 7396. It can be a full or partial URL. For example, the following are all valid URLs to an instance template: - https://www.googleapis.com/compute/v1/projects/project /global/instanceTemplates/instanceTemplate - projects/project/global/instanceTemplates/instanceTemplate - global/instanceTemplates/instanceTemplate This field is optional.
  BulkInsertInstanceResource({
    this.count,
    this.instanceProperties,
    this.locationPolicy,
    this.minCount,
    this.namePattern,
    this.perInstanceProperties,
    this.sourceInstanceTemplate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': ?count,
      'instanceProperties':
          ?pulumi.Input.mapOptionalInputValue<
            InstanceProperties,
            Map<String, dynamic>
          >(instanceProperties, (value) => value.toMap()),
      'locationPolicy':
          ?pulumi.Input.mapOptionalInputValue<
            LocationPolicy,
            Map<String, dynamic>
          >(locationPolicy, (value) => value.toMap()),
      'minCount': ?minCount,
      'namePattern': ?namePattern,
      'perInstanceProperties': ?perInstanceProperties,
      'sourceInstanceTemplate': ?sourceInstanceTemplate,
    };
  }

  factory BulkInsertInstanceResource.fromMap(Map<String, dynamic> map) {
    return BulkInsertInstanceResource(
      count: (() {
        final guardedValue = map['count'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      instanceProperties: (() {
        final guardedValue = map['instanceProperties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          InstanceProperties.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      locationPolicy: (() {
        final guardedValue = map['locationPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          LocationPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      minCount: (() {
        final guardedValue = map['minCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      namePattern: (() {
        final guardedValue = map['namePattern'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      perInstanceProperties: (() {
        final guardedValue = map['perInstanceProperties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      sourceInstanceTemplate: (() {
        final guardedValue = map['sourceInstanceTemplate'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
