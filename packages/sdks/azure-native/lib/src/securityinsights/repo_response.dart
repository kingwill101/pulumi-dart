// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a repository.
class RepoResponse {
  /// Array of branches.
  final pulumi.Input<List<String>>? branches;

  /// The name of the repository.
  final pulumi.Input<String>? fullName;

  /// The installation id of the repository.
  final pulumi.Input<double>? installationId;

  /// The url to access the repository.
  final pulumi.Input<String>? url;

  /// Creates a new [RepoResponse].
  /// [branches] Array of branches.
  /// [fullName] The name of the repository.
  /// [installationId] The installation id of the repository.
  /// [url] The url to access the repository.
  RepoResponse({this.branches, this.fullName, this.installationId, this.url});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'branches': ?branches,
      'fullName': ?fullName,
      'installationId': ?installationId,
      'url': ?url,
    };
  }

  factory RepoResponse.fromMap(Map<String, dynamic> map) {
    return RepoResponse(
      branches: (() {
        final guardedValue = map['branches'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      fullName: (() {
        final guardedValue = map['fullName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      installationId: (() {
        final guardedValue = map['installationId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      url: (() {
        final guardedValue = map['url'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
