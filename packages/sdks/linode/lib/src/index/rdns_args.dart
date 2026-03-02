// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rdns_timeouts.dart';

/// {@template pulumi_index_rdns_rdns_args_doc}
/// The set of arguments for Rdns.
/// {@endtemplate}
/// {@macro pulumi_index_rdns_rdns_args_doc}
class RdnsArgs {
  /// The Public IPv4 or IPv6 address that will receive the `PTR` record.  A matching `A` or `AAAA` record must exist.
  final pulumi.Input<String> address;
  /// The name of the RDNS address.
  final pulumi.Input<String> rdns;
  final pulumi.Input<RdnsTimeouts>? timeouts;
  /// If true, the RDNS assignment will be retried within the operation timeout period.
  final pulumi.Input<bool>? waitForAvailable;

  /// Creates a new [RdnsArgs].
  /// [address] The Public IPv4 or IPv6 address that will receive the `PTR` record.  A matching `A` or `AAAA` record must exist.
  /// [rdns] The name of the RDNS address.
  /// [timeouts] Optional.
  /// [waitForAvailable] If true, the RDNS assignment will be retried within the operation timeout period.
  RdnsArgs({
    required this.address,
    required this.rdns,
    this.timeouts,
    this.waitForAvailable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': address,
      'rdns': rdns,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<RdnsTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'waitForAvailable': ?waitForAvailable,
    };
  }

  factory RdnsArgs.fromMap(Map<String, dynamic> map) {
    return RdnsArgs(
      address: (map['address'] as String).input(),
      rdns: (map['rdns'] as String).input(),
      timeouts: map['timeouts'] == null ? null : (RdnsTimeouts.fromMap((map['timeouts']! as Map).cast<String, dynamic>())).input(),
      waitForAvailable: map['waitForAvailable'] == null ? null : (map['waitForAvailable']! as bool).input(),
    );
  }
}

