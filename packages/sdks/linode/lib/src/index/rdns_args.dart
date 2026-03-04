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
      'timeouts':
          ?pulumi.Input.mapOptionalInputValue<
            RdnsTimeouts,
            Map<String, dynamic>
          >(timeouts, (value) => value.toMap()),
      'waitForAvailable': ?waitForAvailable,
    };
  }

  factory RdnsArgs.fromMap(Map<String, dynamic> map) {
    return RdnsArgs(
      address: pulumi.Input.fromValue(map['address'] as String),
      rdns: pulumi.Input.fromValue(map['rdns'] as String),
      timeouts: (() {
        final guardedValue = map['timeouts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RdnsTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      waitForAvailable: (() {
        final guardedValue = map['waitForAvailable'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
