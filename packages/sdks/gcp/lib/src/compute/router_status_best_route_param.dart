// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RouterStatusBestRouteParam {
  /// Resource manager tags to be bound to the route. Tag keys and values have the
  /// same definition as resource manager tags. Keys must be in the format tagKeys/{tag_key_id},
  /// and values are in the format tagValues/456. The field is ignored when empty.
  /// The field is immutable and causes resource replacement when mutated. This field is only
  /// set at create time and modifying this field after creation will trigger recreation.
  /// To apply tags to an existing resource, see the gcp.tags.TagBinding resource.
  final pulumi.Input<Map<String, String>> resourceManagerTags;

  /// Creates a new [RouterStatusBestRouteParam].
  /// [resourceManagerTags] Resource manager tags to be bound to the route. Tag keys and values have the
  RouterStatusBestRouteParam({required this.resourceManagerTags});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'resourceManagerTags': resourceManagerTags};
  }

  factory RouterStatusBestRouteParam.fromMap(Map<String, dynamic> map) {
    return RouterStatusBestRouteParam(
      resourceManagerTags: pulumi.Input.fromValue(
        (map['resourceManagerTags'] as Map).cast<String, String>(),
      ),
    );
  }
}
