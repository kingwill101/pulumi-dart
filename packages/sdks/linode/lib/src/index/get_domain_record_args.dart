// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_domain_record_get_domain_record_args_doc}
/// Arguments for getDomainRecord.
/// {@endtemplate}
/// {@macro pulumi_index_get_domain_record_get_domain_record_args_doc}
class GetDomainRecordArgs {
  /// The associated domain's unique ID.
  final pulumi.Input<int> domainId;
  /// The unique ID of the Domain Record.
  final pulumi.Input<int>? id;
  /// The name of the Record.
  final pulumi.Input<String>? name;

  /// Creates a new [GetDomainRecordArgs].
  /// [domainId] The associated domain's unique ID.
  /// [id] The unique ID of the Domain Record.
  /// [name] The name of the Record.
  GetDomainRecordArgs({
    required this.domainId,
    this.id,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainId': domainId,
      'id': ?id,
      'name': ?name,
    };
  }

  factory GetDomainRecordArgs.fromMap(Map<String, dynamic> map) {
    return GetDomainRecordArgs(
      domainId: (map['domainId'] as int).input(),
      id: map['id'] == null ? null : (map['id'] as int).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
    );
  }
}

