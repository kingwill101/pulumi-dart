// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'context.dart';

class BuildContext {
  /// Resources to use for build context.
  ///
  /// The location can be:
  /// * A relative or absolute path to a local directory (`.`, `./app`,
  /// `/app`, etc.).
  /// * A remote URL of a Git repository, tarball, or plain text file
  /// (`https://github.com/user/myrepo.git`, `http://server/context.tar.gz`,
  /// etc.).
  final pulumi.Input<String> location;
  /// Additional build contexts to use.
  ///
  /// These contexts are accessed with `FROM name` or `--from=name`
  /// statements when using Dockerfile 1.4+ syntax.
  ///
  /// Values can be local paths, HTTP URLs, or  `docker-image://` images.
  final pulumi.Input<Map<String, Context>>? named;

  /// Creates a new [BuildContext].
  /// [location] Resources to use for build context.
  /// [named] Additional build contexts to use.
  BuildContext({
    required this.location,
    this.named,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'named': ?pulumi.Input.mapOptionalInputValue<Map<String, Context>, Map<String, Map<String, dynamic>>>(named, (value) => pulumi.Input.encodeMapValues<Context, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory BuildContext.fromMap(Map<String, dynamic> map) {
    return BuildContext(
      location: (map['location'] as String).input(),
      named: map['named'] == null ? null : (pulumi.Input.decodeMapValues<Context>(map['named'], (value) => Context.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

