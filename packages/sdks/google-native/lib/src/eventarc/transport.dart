// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pubsub.dart';

/// Represents the transport intermediaries created for the trigger to deliver events.
class Transport {
  /// The Pub/Sub topic and subscription used by Eventarc as a transport intermediary.
  final pulumi.Input<Pubsub>? pubsub;

  /// Creates a new [Transport].
  /// [pubsub] The Pub/Sub topic and subscription used by Eventarc as a transport intermediary.
  Transport({this.pubsub});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pubsub':
          ?pulumi.Input.mapOptionalInputValue<Pubsub, Map<String, dynamic>>(
            pubsub,
            (value) => value.toMap(),
          ),
    };
  }

  factory Transport.fromMap(Map<String, dynamic> map) {
    return Transport(
      pubsub: (() {
        final guardedValue = map['pubsub'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          Pubsub.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
    );
  }
}
