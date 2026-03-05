// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDomainRecord.
class GetDomainRecordResult {
  /// The associated domain's unique ID.
  final int domainId;
  /// The unique ID of the Domain Record.
  final int? id;
  /// The name of the Record.
  final String? name;
  /// The port this Record points to.
  final int port;
  /// The priority of the target host. Lower values are preferred.
  final int priority;
  /// The protocol this Record's service communicates with. Only valid for SRV records.
  final String protocol;
  /// The service this Record identified. Only valid for SRV records.
  final String service;
  /// The tag portion of a CAA record.
  final String tag;
  /// The target for this Record. This field's actual usage depends on the type of record this represents. For A and AAAA records, this is the address the named Domain should resolve to.
  final String target;
  /// The amount of time in seconds that this Domain's records may be cached by resolvers or other domain servers.
  final int ttlSec;
  /// The type of Record this is in the DNS system. See all record types [here](https://techdocs.akamai.com/linode-api/reference/get-domain-record).
  final String type;
  /// The relative weight of this Record. Higher values are preferred.
  final int weight;

  /// Creates a new [GetDomainRecordResult].
  /// [domainId] The associated domain's unique ID.
  /// [id] The unique ID of the Domain Record.
  /// [name] The name of the Record.
  /// [port] The port this Record points to.
  /// [priority] The priority of the target host. Lower values are preferred.
  /// [protocol] The protocol this Record's service communicates with. Only valid for SRV records.
  /// [service] The service this Record identified. Only valid for SRV records.
  /// [tag] The tag portion of a CAA record.
  /// [target] The target for this Record. This field's actual usage depends on the type of record this represents. For A and AAAA records, this is the address the named Domain should resolve to.
  /// [ttlSec] The amount of time in seconds that this Domain's records may be cached by resolvers or other domain servers.
  /// [type] The type of Record this is in the DNS system. See all record types [here](https://techdocs.akamai.com/linode-api/reference/get-domain-record).
  /// [weight] The relative weight of this Record. Higher values are preferred.
  GetDomainRecordResult({
    required this.domainId,
    this.id,
    this.name,
    required this.port,
    required this.priority,
    required this.protocol,
    required this.service,
    required this.tag,
    required this.target,
    required this.ttlSec,
    required this.type,
    required this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainId': domainId,
      'id': ?id,
      'name': ?name,
      'port': port,
      'priority': priority,
      'protocol': protocol,
      'service': service,
      'tag': tag,
      'target': target,
      'ttlSec': ttlSec,
      'type': type,
      'weight': weight,
    };
  }

  factory GetDomainRecordResult.fromMap(Map<String, dynamic> map) {
    return GetDomainRecordResult(
      domainId: map['domainId'] as int,
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as int; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      port: map['port'] as int,
      priority: map['priority'] as int,
      protocol: map['protocol'] as String,
      service: map['service'] as String,
      tag: map['tag'] as String,
      target: map['target'] as String,
      ttlSec: map['ttlSec'] as int,
      type: map['type'] as String,
      weight: map['weight'] as int,
    );
  }
}

