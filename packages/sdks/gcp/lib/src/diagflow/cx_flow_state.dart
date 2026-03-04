// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cx_flow_advanced_settings.dart';
import 'cx_flow_event_handler.dart';
import 'cx_flow_knowledge_connector_settings.dart';
import 'cx_flow_nlu_settings.dart';
import 'cx_flow_transition_route.dart';

/// Input properties used for looking up and filtering CxFlow resources.
class CxFlowState {
  /// Hierarchical advanced settings for this flow. The settings exposed at the lower level overrides the settings exposed at the higher level.
  /// Hierarchy: Agent-&gt;Flow-&gt;Page-&gt;Fulfillment/Parameter.
  /// Structure is documented below.
  final pulumi.Input<CxFlowAdvancedSettings>? advancedSettings;

  /// The description of the flow. The maximum length is 500 characters. If exceeded, the request is rejected.
  final pulumi.Input<String>? description;

  /// The human-readable name of the flow.
  final pulumi.Input<String>? displayName;

  /// A flow's event handlers serve two purposes:
  /// They are responsible for handling events (e.g. no match, webhook errors) in the flow.
  /// They are inherited by every page's [event handlers][Page.event_handlers], which can be used to handle common events regardless of the current page. Event handlers defined in the page have higher priority than those defined in the flow.
  /// Unlike transitionRoutes, these handlers are evaluated on a first-match basis. The first one that matches the event get executed, with the rest being ignored.
  /// Structure is documented below.
  final pulumi.Input<List<CxFlowEventHandler>>? eventHandlers;

  /// Marks this as the [Default Start Flow](https://cloud.google.com/dialogflow/cx/docs/concept/flow#start) for an agent. When you create an agent, the Default Start Flow is created automatically.
  /// The Default Start Flow cannot be deleted; deleting the `gcp.diagflow.CxFlow` resource does nothing to the underlying GCP resources.
  ///
  /// &gt; Avoid having multiple `gcp.diagflow.CxFlow` resources linked to the same agent with `is_default_start_flow = true` because they will compete to control a single Default Start Flow resource in GCP.
  final pulumi.Input<bool>? isDefaultStartFlow;

  /// Knowledge connector configuration.
  /// Structure is documented below.
  final pulumi.Input<CxFlowKnowledgeConnectorSettings>?
  knowledgeConnectorSettings;

  /// The language of the following fields in flow:
  /// Flow.event_handlers.trigger_fulfillment.messages
  /// Flow.event_handlers.trigger_fulfillment.conditional_cases
  /// Flow.transition_routes.trigger_fulfillment.messages
  /// Flow.transition_routes.trigger_fulfillment.conditional_cases
  /// If not specified, the agent's default language is used. Many languages are supported. Note: languages must be enabled in the agent before they can be used.
  final pulumi.Input<String>? languageCode;

  /// The unique identifier of the flow.
  /// Format: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;/flows/&lt;Flow ID&gt;.
  final pulumi.Input<String>? name;

  /// NLU related settings of the flow.
  /// Structure is documented below.
  final pulumi.Input<CxFlowNluSettings>? nluSettings;

  /// The agent to create a flow for.
  /// Format: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;.
  final pulumi.Input<String>? parent;

  /// A flow's transition route group serve two purposes:
  /// They are responsible for matching the user's first utterances in the flow.
  /// They are inherited by every page's [transition route groups][Page.transition_route_groups]. Transition route groups defined in the page have higher priority than those defined in the flow.
  /// Format:projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;/flows/&lt;Flow ID&gt;/transitionRouteGroups/&lt;TransitionRouteGroup ID&gt;.
  final pulumi.Input<List<String>>? transitionRouteGroups;

  /// A flow's transition routes serve two purposes:
  /// They are responsible for matching the user's first utterances in the flow.
  /// They are inherited by every page's [transition routes][Page.transition_routes] and can support use cases such as the user saying "help" or "can I talk to a human?", which can be handled in a common way regardless of the current page. Transition routes defined in the page have higher priority than those defined in the flow.
  /// TransitionRoutes are evalauted in the following order:
  /// TransitionRoutes with intent specified.
  /// TransitionRoutes with only condition specified.
  /// TransitionRoutes with intent specified are inherited by pages in the flow.
  /// Structure is documented below.
  final pulumi.Input<List<CxFlowTransitionRoute>>? transitionRoutes;

  /// Creates a new [CxFlowState].
  /// [advancedSettings] Hierarchical advanced settings for this flow. The settings exposed at the lower level overrides the settings exposed at the higher level.
  /// [description] The description of the flow. The maximum length is 500 characters. If exceeded, the request is rejected.
  /// [displayName] The human-readable name of the flow.
  /// [eventHandlers] A flow's event handlers serve two purposes:
  /// [isDefaultStartFlow] Marks this as the [Default Start Flow](https://cloud.google.com/dialogflow/cx/docs/concept/flow#start) for an agent. When you create an agent, the Default Start Flow is created automatically.
  /// [knowledgeConnectorSettings] Knowledge connector configuration.
  /// [languageCode] The language of the following fields in flow:
  /// [name] The unique identifier of the flow.
  /// [nluSettings] NLU related settings of the flow.
  /// [parent] The agent to create a flow for.
  /// [transitionRouteGroups] A flow's transition route group serve two purposes:
  /// [transitionRoutes] A flow's transition routes serve two purposes:
  CxFlowState({
    this.advancedSettings,
    this.description,
    this.displayName,
    this.eventHandlers,
    this.isDefaultStartFlow,
    this.knowledgeConnectorSettings,
    this.languageCode,
    this.name,
    this.nluSettings,
    this.parent,
    this.transitionRouteGroups,
    this.transitionRoutes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advancedSettings':
          ?pulumi.Input.mapOptionalInputValue<
            CxFlowAdvancedSettings,
            Map<String, dynamic>
          >(advancedSettings, (value) => value.toMap()),
      'description': ?description,
      'displayName': ?displayName,
      'eventHandlers':
          ?pulumi.Input.mapOptionalInputValue<
            List<CxFlowEventHandler>,
            List<Map<String, dynamic>>
          >(
            eventHandlers,
            (value) =>
                pulumi.Input.encodeList<
                  CxFlowEventHandler,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'isDefaultStartFlow': ?isDefaultStartFlow,
      'knowledgeConnectorSettings':
          ?pulumi.Input.mapOptionalInputValue<
            CxFlowKnowledgeConnectorSettings,
            Map<String, dynamic>
          >(knowledgeConnectorSettings, (value) => value.toMap()),
      'languageCode': ?languageCode,
      'name': ?name,
      'nluSettings':
          ?pulumi.Input.mapOptionalInputValue<
            CxFlowNluSettings,
            Map<String, dynamic>
          >(nluSettings, (value) => value.toMap()),
      'parent': ?parent,
      'transitionRouteGroups': ?transitionRouteGroups,
      'transitionRoutes':
          ?pulumi.Input.mapOptionalInputValue<
            List<CxFlowTransitionRoute>,
            List<Map<String, dynamic>>
          >(
            transitionRoutes,
            (value) =>
                pulumi.Input.encodeList<
                  CxFlowTransitionRoute,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory CxFlowState.fromMap(Map<String, dynamic> map) {
    return CxFlowState(
      advancedSettings: (() {
        final guardedValue = map['advancedSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CxFlowAdvancedSettings.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      displayName: (() {
        final guardedValue = map['displayName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      eventHandlers: (() {
        final guardedValue = map['eventHandlers'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<CxFlowEventHandler>(
            guardedValue,
            (value) => CxFlowEventHandler.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      isDefaultStartFlow: (() {
        final guardedValue = map['isDefaultStartFlow'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      knowledgeConnectorSettings: (() {
        final guardedValue = map['knowledgeConnectorSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CxFlowKnowledgeConnectorSettings.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      languageCode: (() {
        final guardedValue = map['languageCode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      nluSettings: (() {
        final guardedValue = map['nluSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CxFlowNluSettings.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      parent: (() {
        final guardedValue = map['parent'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      transitionRouteGroups: (() {
        final guardedValue = map['transitionRouteGroups'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      transitionRoutes: (() {
        final guardedValue = map['transitionRoutes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<CxFlowTransitionRoute>(
            guardedValue,
            (value) => CxFlowTransitionRoute.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
