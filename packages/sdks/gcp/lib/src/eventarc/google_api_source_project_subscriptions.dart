// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GoogleApiSourceProjectSubscriptions {
  /// A list of projects to receive events from.
  /// All the projects must be in the same org. The listed projects should have
  /// the format project/{identifier} where identifier can be either the
  /// project id for project number. A single list may contain both formats. At
  /// most 100 projects can be listed.
  final pulumi.Input<List<String>> lists;

  /// Creates a new [GoogleApiSourceProjectSubscriptions].
  /// [lists] A list of projects to receive events from.
  const GoogleApiSourceProjectSubscriptions({
    required this.lists,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lists': lists,
    };
  }

  factory GoogleApiSourceProjectSubscriptions.fromMap(Map<String, dynamic> map) {
    return GoogleApiSourceProjectSubscriptions(
      lists: pulumi.Input.fromValue((map['lists'] as List).cast<String>()),
    );
  }
}
