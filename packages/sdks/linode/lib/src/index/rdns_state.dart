// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rdns_timeouts.dart';

/// Input properties used for looking up and filtering Rdns resources.
class RdnsState {
  /// The Public IPv4 or IPv6 address that will receive the `PTR` record.  A matching `A` or `AAAA` record must exist.
  final pulumi.Input<String>? address;
  /// The name of the RDNS address.
  final pulumi.Input<String>? rdns;
  final pulumi.Input<RdnsTimeouts>? timeouts;
  /// If true, the RDNS assignment will be retried within the operation timeout period.
  final pulumi.Input<bool>? waitForAvailable;

  /// Creates a new [RdnsState].
  /// [address] The Public IPv4 or IPv6 address that will receive the `PTR` record.  A matching `A` or `AAAA` record must exist.
  /// [rdns] The name of the RDNS address.
  /// [timeouts] Optional.
  /// [waitForAvailable] If true, the RDNS assignment will be retried within the operation timeout period.
  RdnsState({
    pulumi.Output<String>? address,
    pulumi.Output<String>? rdns,
    pulumi.Output<RdnsTimeouts>? timeouts,
    pulumi.Output<bool>? waitForAvailable,
  }) :
      address = pulumi.Input.asOptionalInput<String>(address),
      rdns = pulumi.Input.asOptionalInput<String>(rdns),
      timeouts = pulumi.Input.asOptionalInput<RdnsTimeouts>(timeouts),
      waitForAvailable = pulumi.Input.asOptionalInput<bool>(waitForAvailable);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'rdns': ?rdns,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<RdnsTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'waitForAvailable': ?waitForAvailable,
    };
  }

  factory RdnsState.fromMap(Map<String, dynamic> map) {
    return RdnsState(
      address: map['address'] == null ? null : pulumi.Output.create<String>(map['address'] as String),
      rdns: map['rdns'] == null ? null : pulumi.Output.create<String>(map['rdns'] as String),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<RdnsTimeouts>(RdnsTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
      waitForAvailable: map['waitForAvailable'] == null ? null : pulumi.Output.create<bool>(map['waitForAvailable'] as bool),
    );
  }
}

