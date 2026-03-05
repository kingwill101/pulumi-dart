// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_application_attribute.dart';
import 'get_application_scope.dart';

/// Result data returned by getApplication.
class GetApplicationResult {
  final String applicationId;
  final List<GetApplicationAttribute> attributes;
  final String createTime;
  final String description;
  final String displayName;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String location;
  final String name;
  final String project;
  final List<GetApplicationScope> scopes;
  final String state;
  final String uid;
  final String updateTime;

  /// Creates a new [GetApplicationResult].
  /// [applicationId] Required.
  /// [attributes] Required.
  /// [createTime] Required.
  /// [description] Required.
  /// [displayName] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Required.
  /// [name] Required.
  /// [project] Required.
  /// [scopes] Required.
  /// [state] Required.
  /// [uid] Required.
  /// [updateTime] Required.
  GetApplicationResult({
    required this.applicationId,
    required this.attributes,
    required this.createTime,
    required this.description,
    required this.displayName,
    required this.id,
    required this.location,
    required this.name,
    required this.project,
    required this.scopes,
    required this.state,
    required this.uid,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': applicationId,
      'attributes': pulumi.Input.encodeList<GetApplicationAttribute, Map<String, dynamic>>(attributes, (value) => value.toMap()),
      'createTime': createTime,
      'description': description,
      'displayName': displayName,
      'id': id,
      'location': location,
      'name': name,
      'project': project,
      'scopes': pulumi.Input.encodeList<GetApplicationScope, Map<String, dynamic>>(scopes, (value) => value.toMap()),
      'state': state,
      'uid': uid,
      'updateTime': updateTime,
    };
  }

  factory GetApplicationResult.fromMap(Map<String, dynamic> map) {
    return GetApplicationResult(
      applicationId: map['applicationId'] as String,
      attributes: pulumi.Input.decodeList<GetApplicationAttribute>(map['attributes']!, (value) => GetApplicationAttribute.fromMap((value as Map).cast<String, dynamic>())),
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      project: map['project'] as String,
      scopes: pulumi.Input.decodeList<GetApplicationScope>(map['scopes']!, (value) => GetApplicationScope.fromMap((value as Map).cast<String, dynamic>())),
      state: map['state'] as String,
      uid: map['uid'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}

