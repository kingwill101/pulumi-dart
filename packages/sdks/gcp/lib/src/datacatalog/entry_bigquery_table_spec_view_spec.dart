// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EntryBigqueryTableSpecViewSpec {
  /// (Output)
  /// The query that defines the table view.
  final pulumi.Input<String>? viewQuery;

  /// Creates a new [EntryBigqueryTableSpecViewSpec].
  /// [viewQuery] (Output)
  EntryBigqueryTableSpecViewSpec({
    this.viewQuery,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'viewQuery': ?viewQuery,
    };
  }

  factory EntryBigqueryTableSpecViewSpec.fromMap(Map<String, dynamic> map) {
    return EntryBigqueryTableSpecViewSpec(
      viewQuery: map['viewQuery'] == null ? null : (map['viewQuery'] as String).input(),
    );
  }
}

