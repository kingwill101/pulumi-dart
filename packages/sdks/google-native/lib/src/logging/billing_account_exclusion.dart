import 'package:pulumi/pulumi.dart' as pulumi;
import 'billing_account_exclusion_args.dart';

/// Creates a new exclusion in the _Default sink in a specified parent resource. Only log entries belonging to that resource can be excluded. You can have up to 10 exclusions in a resource.
class BillingAccountExclusion extends pulumi.CustomResource {
  late final pulumi.Output<String> billingAccountId;

  /// The creation timestamp of the exclusion.This field may not be present for older exclusions.
  late final pulumi.Output<String> createTime;

  /// Optional. A description of this exclusion.
  late final pulumi.Output<String> description;

  /// Optional. If set to True, then this exclusion is disabled and it does not exclude any log entries. You can update an exclusion to change the value of this field.
  late final pulumi.Output<bool> disabled;

  /// An advanced logs filter (https://cloud.google.com/logging/docs/view/advanced-queries) that matches the log entries to be excluded. By using the sample function (https://cloud.google.com/logging/docs/view/advanced-queries#sample), you can exclude less than 100% of the matching log entries.For example, the following query matches 99% of low-severity log entries from Google Cloud Storage buckets:resource.type=gcs_bucket severity&lt;ERROR sample(insertId, 0.99)
  late final pulumi.Output<String> filter;

  /// A client-assigned identifier, such as "load-balancer-exclusion". Identifiers are limited to 100 characters and can include only letters, digits, underscores, hyphens, and periods. First character has to be alphanumeric.
  late final pulumi.Output<String> name;

  /// The last update timestamp of the exclusion.This field may not be present for older exclusions.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [BillingAccountExclusion].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BillingAccountExclusion]. {@macro pulumi_logging_v2_billing_account_exclusion_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BillingAccountExclusion(
    String name, {
    BillingAccountExclusionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:logging/v2:BillingAccountExclusion',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    billingAccountId = registerOutput<String>('billingAccountId');
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String>('description');
    disabled = registerOutput<bool>('disabled');
    filter = registerOutput<String>('filter');
    this.name = registerOutput<String>('name');
    updateTime = registerOutput<String>('updateTime');
  }
}
