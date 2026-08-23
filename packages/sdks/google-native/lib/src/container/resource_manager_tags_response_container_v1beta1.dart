// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A map of resource manager tag keys and values to be attached to the nodes for managing Compute Engine firewalls using Network Firewall Policies. Tags must be according to specifications in https://cloud.google.com/vpc/docs/tags-firewalls-overview#specifications. A maximum of 5 tag key-value pairs can be specified. Existing tags will be replaced with new values.
class ResourceManagerTagsResponseContainerV1beta1 {
  /// Tags must be in one of the following formats ([KEY]=[VALUE]) 1. `tagKeys/{tag_key_id}=tagValues/{tag_value_id}` 2. `{org_id}/{tag_key_name}={tag_value_name}` 3. `{project_id}/{tag_key_name}={tag_value_name}`
  final pulumi.Input<Map<String, String>> tags;

  /// Creates a new [ResourceManagerTagsResponseContainerV1beta1].
  /// [tags] Tags must be in one of the following formats ([KEY]=[VALUE]) 1. `tagKeys/{tag_key_id}=tagValues/{tag_value_id}` 2. `{org_id}/{tag_key_name}={tag_value_name}` 3. `{project_id}/{tag_key_name}={tag_value_name}`
  const ResourceManagerTagsResponseContainerV1beta1({
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tags': tags,
    };
  }

  factory ResourceManagerTagsResponseContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return ResourceManagerTagsResponseContainerV1beta1(
      tags: pulumi.Input.fromValue((map['tags'] as Map).cast<String, String>()),
    );
  }
}
