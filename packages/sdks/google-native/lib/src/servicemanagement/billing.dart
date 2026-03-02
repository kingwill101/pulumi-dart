// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'billing_destination.dart';

/// Billing related configuration of the service. The following example shows how to configure monitored resources and metrics for billing, `consumer_destinations` is the only supported destination and the monitored resources need at least one label key `cloud.googleapis.com/location` to indicate the location of the billing usage, using different monitored resources between monitoring and billing is recommended so they can be evolved independently: monitored_resources: - type: library.googleapis.com/billing_branch labels: - key: cloud.googleapis.com/location description: | Predefined label to support billing location restriction. - key: city description: | Custom label to define the city where the library branch is located in. - key: name description: Custom label to define the name of the library branch. metrics: - name: library.googleapis.com/book/borrowed_count metric_kind: DELTA value_type: INT64 unit: "1" billing: consumer_destinations: - monitored_resource: library.googleapis.com/billing_branch metrics: - library.googleapis.com/book/borrowed_count
class Billing {
  /// Billing configurations for sending metrics to the consumer project. There can be multiple consumer destinations per service, each one must have a different monitored resource type. A metric can be used in at most one consumer destination.
  final pulumi.Input<List<BillingDestination>>? consumerDestinations;

  /// Creates a new [Billing].
  /// [consumerDestinations] Billing configurations for sending metrics to the consumer project. There can be multiple consumer destinations per service, each one must have a different monitored resource type. A metric can be used in at most one consumer destination.
  Billing({
    this.consumerDestinations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consumerDestinations': ?pulumi.Input.mapOptionalInputValue<List<BillingDestination>, List<Map<String, dynamic>>>(consumerDestinations, (value) => pulumi.Input.encodeList<BillingDestination, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory Billing.fromMap(Map<String, dynamic> map) {
    return Billing(
      consumerDestinations: map['consumerDestinations'] == null ? null : (pulumi.Input.decodeList<BillingDestination>(map['consumerDestinations'], (value) => BillingDestination.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

