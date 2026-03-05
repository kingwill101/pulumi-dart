import 'package:pulumi/pulumi.dart' as pulumi;
import 'subscription_args.dart';

/// Creates a new BeyondCorp Enterprise Subscription in a given organization. Location will always be global as BeyondCorp subscriptions are per organization.
/// Note - this resource's API doesn't support deletion. When deleted, the resource will persist
/// on Google Cloud even though it will be deleted from Pulumi state.
class Subscription extends pulumi.CustomResource {
  /// Represents that, if subscription will renew or end when the term ends.
  late final pulumi.Output<bool> autoRenewEnabled;
  /// Create time of the subscription.
  late final pulumi.Output<String> createTime;
  /// End time of the subscription.
  late final pulumi.Output<String> endTime;
  late final pulumi.Output<String> location;
  /// Unique resource name of the Subscription. The name is ignored when creating a subscription.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> organizationId;
  /// Optional. Number of seats in the subscription.
  late final pulumi.Output<String> seatCount;
  /// SKU of subscription.
  late final pulumi.Output<String> sku;
  /// Start time of the subscription.
  late final pulumi.Output<String> startTime;
  /// The current state of the subscription.
  late final pulumi.Output<String> state;
  /// Type of subscription.
  late final pulumi.Output<String> type;

  /// Creates a new [Subscription].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Subscription]. {@macro pulumi_beyondcorp_v1alpha_subscription_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Subscription(
    String name, {
    SubscriptionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:beyondcorp/v1alpha:Subscription',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    autoRenewEnabled = registerOutput<bool>('autoRenewEnabled');
    createTime = registerOutput<String>('createTime');
    endTime = registerOutput<String>('endTime');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    organizationId = registerOutput<String>('organizationId');
    seatCount = registerOutput<String>('seatCount');
    sku = registerOutput<String>('sku');
    startTime = registerOutput<String>('startTime');
    state = registerOutput<String>('state');
    type = registerOutput<String>('type');
  }
}
