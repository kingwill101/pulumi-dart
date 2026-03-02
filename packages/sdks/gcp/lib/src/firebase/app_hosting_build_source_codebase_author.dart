// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppHostingBuildSourceCodebaseAuthor {
  /// Human-readable name. 63 character limit.
  final pulumi.Input<String>? displayName;
  /// The 'email' field in a Git user's git.config, if available.
  final pulumi.Input<String>? email;
  /// The URI of an image file associated with the user's account in an
  /// external source control provider, if available.
  final pulumi.Input<String>? imageUri;

  /// Creates a new [AppHostingBuildSourceCodebaseAuthor].
  /// [displayName] Human-readable name. 63 character limit.
  /// [email] The 'email' field in a Git user's git.config, if available.
  /// [imageUri] The URI of an image file associated with the user's account in an
  AppHostingBuildSourceCodebaseAuthor({
    this.displayName,
    this.email,
    this.imageUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'email': ?email,
      'imageUri': ?imageUri,
    };
  }

  factory AppHostingBuildSourceCodebaseAuthor.fromMap(Map<String, dynamic> map) {
    return AppHostingBuildSourceCodebaseAuthor(
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      email: map['email'] == null ? null : (map['email'] as String).input(),
      imageUri: map['imageUri'] == null ? null : (map['imageUri'] as String).input(),
    );
  }
}

