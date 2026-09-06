import 'package:pulumi/pulumi.dart' as pulumi;
import 'action_response.dart';
import 'correlation_filter_response.dart';
import 'default_rule_args.dart';
import 'sql_filter_response.dart';
import 'system_data_response.dart';

/// The "$Default" rule that Azure automatically creates alongside every ServiceBus subscription.
///
/// By default this rule has a TrueFilter, which allows all messages through to the subscription. This resource lets
/// you manage that rule directly: update its filter (e.g. to a SqlFilter or CorrelationFilter), or delete this
/// resource to remove the rule entirely.
///
/// Unlike `Rule`, this resource has no `ruleName` input since it always refers to the "$Default" rule that Azure
/// creates for you; there's no need to construct or import its resource ID by hand.
///
/// Note: deleting this resource permanently removes the "$Default" rule from the subscription. If no other rules
/// exist afterwards, the subscription will not receive any messages from the topic.
///
/// See [Issue #4489](https://github.com/pulumi/pulumi-azure-native/issues/4489) for more details on the problem this
/// resource solves.
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:servicebus:DefaultRule myresource1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ServiceBus/namespaces/{namespaceName}/topics/{topicName}/subscriptions/{subscriptionName}/rules/$Default
/// ```
class DefaultRule extends pulumi.CustomResource {
  /// Represents the filter actions which are allowed for the transformation of a message that have been matched by a filter expression.
  late final pulumi.Output<ActionResponse?> action;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Properties of correlationFilter
  late final pulumi.Output<CorrelationFilterResponse?> correlationFilter;
  /// Filter type that is evaluated against a BrokeredMessage.
  late final pulumi.Output<String?> filterType;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Properties of sqlFilter
  late final pulumi.Output<SqlFilterResponse?> sqlFilter;
  /// The system meta data relating to this resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.EventHub/Namespaces" or "Microsoft.EventHub/Namespaces/EventHubs"
  late final pulumi.Output<String> type;

  /// Creates a new [DefaultRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DefaultRule]. {@macro pulumi_servicebus_default_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DefaultRule(
    String name, {
    DefaultRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:servicebus:DefaultRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    action = registerOutput<ActionResponse?>('action', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ActionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    azureApiVersion = registerOutput<String>('azureApiVersion');
    correlationFilter = registerOutput<CorrelationFilterResponse?>('correlationFilter', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CorrelationFilterResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    filterType = registerOutput<String?>('filterType');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    sqlFilter = registerOutput<SqlFilterResponse?>('sqlFilter', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SqlFilterResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [DefaultRule] resource.
  DefaultRule.reference(String urn)
    : super(
        'azure-native:servicebus:DefaultRule',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    action = registerOutput<ActionResponse?>('action', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ActionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    azureApiVersion = registerOutput<String>('azureApiVersion');
    correlationFilter = registerOutput<CorrelationFilterResponse?>('correlationFilter', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CorrelationFilterResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    filterType = registerOutput<String?>('filterType');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    sqlFilter = registerOutput<SqlFilterResponse?>('sqlFilter', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SqlFilterResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
