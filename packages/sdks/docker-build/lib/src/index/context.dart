// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class Context {
  /// Resources to use for build context.
  ///
  /// The location can be:
  /// * A relative or absolute path to a local directory (`.`, `./app`,
  /// `/app`, etc.).
  /// * A remote URL of a Git repository, tarball, or plain text file
  /// (`https://github.com/user/myrepo.git`, `http://server/context.tar.gz`,
  /// etc.).
  final pulumi.Input<String> location;

  /// Creates a new [Context].
  /// [location] Resources to use for build context.
  Context({
    required this.location,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
    };
  }

  factory Context.fromMap(Map<String, dynamic> map) {
    return Context(
      location: pulumi.Input.fromValue(map['location'] as String),
    );
  }
}

