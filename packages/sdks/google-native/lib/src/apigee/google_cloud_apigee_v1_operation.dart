// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents the pairing of REST resource path and the actions (verbs) allowed on the resource path.
class GoogleCloudApigeeV1Operation {
  /// methods refers to the REST verbs as in https://www.w3.org/Protocols/rfc2616/rfc2616-sec9.html. When none specified, all verb types are allowed.
  final pulumi.Input<List<String>>? methods;
  /// REST resource path associated with the API proxy or remote service.
  final pulumi.Input<String> resource;

  /// Creates a new [GoogleCloudApigeeV1Operation].
  /// [methods] methods refers to the REST verbs as in https://www.w3.org/Protocols/rfc2616/rfc2616-sec9.html. When none specified, all verb types are allowed.
  /// [resource] REST resource path associated with the API proxy or remote service.
  GoogleCloudApigeeV1Operation({
    this.methods,
    required this.resource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'methods': ?methods,
      'resource': resource,
    };
  }

  factory GoogleCloudApigeeV1Operation.fromMap(Map<String, dynamic> map) {
    return GoogleCloudApigeeV1Operation(
      methods: map['methods'] == null ? null : ((map['methods']! as List).cast<String>()).input(),
      resource: (map['resource'] as String).input(),
    );
  }
}

