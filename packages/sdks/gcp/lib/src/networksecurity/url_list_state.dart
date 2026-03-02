// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering UrlList resources.
class UrlListState {
  /// Output only. Time when the security policy was created.
  /// A timestamp in RFC3339 UTC 'Zulu' format, with nanosecond resolution and up to nine fractional digits.
  /// Examples: '2014-10-02T15:01:23Z' and '2014-10-02T15:01:23.045123456Z'
  final pulumi.Input<String>? createTime;
  /// Free-text description of the resource.
  final pulumi.Input<String>? description;
  /// The location of the url lists.
  final pulumi.Input<String>? location;
  /// Short name of the UrlList resource to be created.
  /// This value should be 1-63 characters long, containing only letters, numbers, hyphens, and underscores, and should not start with a number. E.g. 'urlList'.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Output only. Time when the security policy was updated.
  /// A timestamp in RFC3339 UTC 'Zulu' format, with nanosecond resolution and up to nine fractional digits.
  /// Examples: '2014-10-02T15:01:23Z' and '2014-10-02T15:01:23.045123456Z'.
  final pulumi.Input<String>? updateTime;
  /// FQDNs and URLs.
  final pulumi.Input<List<String>>? values;

  /// Creates a new [UrlListState].
  /// [createTime] Output only. Time when the security policy was created.
  /// [description] Free-text description of the resource.
  /// [location] The location of the url lists.
  /// [name] Short name of the UrlList resource to be created.
  /// [project] The ID of the project in which the resource belongs.
  /// [updateTime] Output only. Time when the security policy was updated.
  /// [values] FQDNs and URLs.
  UrlListState({
    this.createTime,
    this.description,
    this.location,
    this.name,
    this.project,
    this.updateTime,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'updateTime': ?updateTime,
      'values': ?values,
    };
  }

  factory UrlListState.fromMap(Map<String, dynamic> map) {
    return UrlListState(
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime'] as String).input(),
      values: map['values'] == null ? null : ((map['values'] as List).cast<String>()).input(),
    );
  }
}

