// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TableFieldSchemaPolicyTags {
  /// A list of category resource names. For example, "projects/1/location/eu/taxonomies/2/policyTags/3". At most 1 policy tag is allowed.
  final pulumi.Input<List<String>>? names;

  /// Creates a new [TableFieldSchemaPolicyTags].
  /// [names] A list of category resource names. For example, "projects/1/location/eu/taxonomies/2/policyTags/3". At most 1 policy tag is allowed.
  const TableFieldSchemaPolicyTags({
    this.names,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'names': ?names,
    };
  }

  factory TableFieldSchemaPolicyTags.fromMap(Map<String, dynamic> map) {
    return TableFieldSchemaPolicyTags(
      names: (() { final guardedValue = map['names']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
