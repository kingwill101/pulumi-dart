// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of the Connection resource.
class ConnectionProperties {
  /// A description for the Connection.
  final pulumi.Input<String?>? description;
  /// List of job definitions associated with this connection.
  final pulumi.Input<List<String>?>? jobList;
  /// The PrivateLinkServiceId for the connection.
  final pulumi.Input<String> privateLinkServiceId;

  /// Creates a new [ConnectionProperties].
  /// [description] A description for the Connection.
  /// [jobList] List of job definitions associated with this connection.
  /// [privateLinkServiceId] The PrivateLinkServiceId for the connection.
  const ConnectionProperties({
    this.description,
    this.jobList,
    required this.privateLinkServiceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'jobList': ?jobList,
      'privateLinkServiceId': privateLinkServiceId,
    };
  }

  factory ConnectionProperties.fromMap(Map<String, dynamic> map) {
    return ConnectionProperties(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      jobList: (() { final guardedValue = map['jobList']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      privateLinkServiceId: pulumi.Input.fromValue(map['privateLinkServiceId'] as String),
    );
  }
}
