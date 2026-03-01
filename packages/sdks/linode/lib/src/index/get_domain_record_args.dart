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
    required pulumi.Output<int> domainId,
    pulumi.Output<int>? id,
    pulumi.Output<String>? name,
  }) :
      domainId = pulumi.Input.asInput<int>(domainId),
      id = pulumi.Input.asOptionalInput<int>(id),
      name = pulumi.Input.asOptionalInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainId': domainId,
      'id': ?id,
      'name': ?name,
    };
  }

  factory GetDomainRecordArgs.fromMap(Map<String, dynamic> map) {
    return GetDomainRecordArgs(
      domainId: pulumi.Output.create<int>(map['domainId'] as int),
      id: map['id'] == null ? null : pulumi.Output.create<int>(map['id'] as int),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
    );
  }
}

