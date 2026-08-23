// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pubsub_response_eventarc_v1beta1.dart';

/// Represents the transport intermediaries created for the trigger in order to deliver events.
class TransportResponseEventarcV1beta1 {
  /// The Pub/Sub topic and subscription used by Eventarc as delivery intermediary.
  final pulumi.Input<PubsubResponseEventarcV1beta1> pubsub;

  /// Creates a new [TransportResponseEventarcV1beta1].
  /// [pubsub] The Pub/Sub topic and subscription used by Eventarc as delivery intermediary.
  const TransportResponseEventarcV1beta1({
    required this.pubsub,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pubsub': pulumi.Input.mapInputValue<PubsubResponseEventarcV1beta1, Map<String, dynamic>>(pubsub, (value) => value.toMap()),
    };
  }

  factory TransportResponseEventarcV1beta1.fromMap(Map<String, dynamic> map) {
    return TransportResponseEventarcV1beta1(
      pubsub: pulumi.Input.fromValue(PubsubResponseEventarcV1beta1.fromMap((map['pubsub']! as Map).cast<String, dynamic>())),
    );
  }
}
