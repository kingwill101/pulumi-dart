// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cx_page_advanced_settings.dart';
import 'cx_page_entry_fulfillment.dart';
import 'cx_page_event_handler.dart';
import 'cx_page_form.dart';
import 'cx_page_knowledge_connector_settings.dart';
import 'cx_page_transition_route.dart';

/// Input properties used for looking up and filtering CxPage resources.
class CxPageState {
  /// Hierarchical advanced settings for this page. The settings exposed at the lower level overrides the settings exposed at the higher level.
  /// Hierarchy: Agent-&gt;Flow-&gt;Page-&gt;Fulfillment/Parameter.
  /// Structure is documented below.
  final pulumi.Input<CxPageAdvancedSettings>? advancedSettings;
  /// The human-readable name of the page, unique within the agent.
  final pulumi.Input<String>? displayName;
  /// The fulfillment to call when the session is entering the page.
  /// Structure is documented below.
  final pulumi.Input<CxPageEntryFulfillment>? entryFulfillment;
  /// Handlers associated with the page to handle events such as webhook errors, no match or no input.
  /// Structure is documented below.
  final pulumi.Input<List<CxPageEventHandler>>? eventHandlers;
  /// The form associated with the page, used for collecting parameters relevant to the page.
  /// Structure is documented below.
  final pulumi.Input<CxPageForm>? form;
  /// Knowledge connector configuration.
  /// Structure is documented below.
  final pulumi.Input<CxPageKnowledgeConnectorSettings>? knowledgeConnectorSettings;
  /// The language of the following fields in page:
  /// Page.entry_fulfillment.messages
  /// Page.entry_fulfillment.conditional_cases
  /// Page.event_handlers.trigger_fulfillment.messages
  /// Page.event_handlers.trigger_fulfillment.conditional_cases
  /// Page.form.parameters.fill_behavior.initial_prompt_fulfillment.messages
  /// Page.form.parameters.fill_behavior.initial_prompt_fulfillment.conditional_cases
  /// Page.form.parameters.fill_behavior.reprompt_event_handlers.messages
  /// Page.form.parameters.fill_behavior.reprompt_event_handlers.conditional_cases
  /// Page.transition_routes.trigger_fulfillment.messages
  /// Page.transition_routes.trigger_fulfillment.conditional_cases
  /// If not specified, the agent's default language is used. Many languages are supported. Note: languages must be enabled in the agent before they can be used.
  final pulumi.Input<String>? languageCode;
  /// The unique identifier of the page.
  /// Format: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;/flows/&lt;Flow ID&gt;/pages/&lt;Page ID&gt;.
  final pulumi.Input<String>? name;
  /// The flow to create a page for.
  /// Format: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;/flows/&lt;Flow ID&gt;.
  final pulumi.Input<String>? parent;
  /// Ordered list of TransitionRouteGroups associated with the page. Transition route groups must be unique within a page.
  /// If multiple transition routes within a page scope refer to the same intent, then the precedence order is: page's transition route &gt; page's transition route group &gt; flow's transition routes.
  /// If multiple transition route groups within a page contain the same intent, then the first group in the ordered list takes precedence.
  /// Format:projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;/flows/&lt;Flow ID&gt;/transitionRouteGroups/&lt;TransitionRouteGroup ID&gt;.
  final pulumi.Input<List<String>>? transitionRouteGroups;
  /// A list of transitions for the transition rules of this page. They route the conversation to another page in the same flow, or another flow.
  /// When we are in a certain page, the TransitionRoutes are evalauted in the following order:
  /// TransitionRoutes defined in the page with intent specified.
  /// TransitionRoutes defined in the transition route groups with intent specified.
  /// TransitionRoutes defined in flow with intent specified.
  /// TransitionRoutes defined in the transition route groups with intent specified.
  /// TransitionRoutes defined in the page with only condition specified.
  /// TransitionRoutes defined in the transition route groups with only condition specified.
  /// Structure is documented below.
  final pulumi.Input<List<CxPageTransitionRoute>>? transitionRoutes;

  /// Creates a new [CxPageState].
  /// [advancedSettings] Hierarchical advanced settings for this page. The settings exposed at the lower level overrides the settings exposed at the higher level.
  /// [displayName] The human-readable name of the page, unique within the agent.
  /// [entryFulfillment] The fulfillment to call when the session is entering the page.
  /// [eventHandlers] Handlers associated with the page to handle events such as webhook errors, no match or no input.
  /// [form] The form associated with the page, used for collecting parameters relevant to the page.
  /// [knowledgeConnectorSettings] Knowledge connector configuration.
  /// [languageCode] The language of the following fields in page:
  /// [name] The unique identifier of the page.
  /// [parent] The flow to create a page for.
  /// [transitionRouteGroups] Ordered list of TransitionRouteGroups associated with the page. Transition route groups must be unique within a page.
  /// [transitionRoutes] A list of transitions for the transition rules of this page. They route the conversation to another page in the same flow, or another flow.
  const CxPageState({
    this.advancedSettings,
    this.displayName,
    this.entryFulfillment,
    this.eventHandlers,
    this.form,
    this.knowledgeConnectorSettings,
    this.languageCode,
    this.name,
    this.parent,
    this.transitionRouteGroups,
    this.transitionRoutes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advancedSettings': ?pulumi.Input.mapOptionalInputValue<CxPageAdvancedSettings, Map<String, dynamic>>(advancedSettings, (value) => value.toMap()),
      'displayName': ?displayName,
      'entryFulfillment': ?pulumi.Input.mapOptionalInputValue<CxPageEntryFulfillment, Map<String, dynamic>>(entryFulfillment, (value) => value.toMap()),
      'eventHandlers': ?pulumi.Input.mapOptionalInputValue<List<CxPageEventHandler>, List<Map<String, dynamic>>>(eventHandlers, (value) => pulumi.Input.encodeList<CxPageEventHandler, Map<String, dynamic>>(value, (value) => value.toMap())),
      'form': ?pulumi.Input.mapOptionalInputValue<CxPageForm, Map<String, dynamic>>(form, (value) => value.toMap()),
      'knowledgeConnectorSettings': ?pulumi.Input.mapOptionalInputValue<CxPageKnowledgeConnectorSettings, Map<String, dynamic>>(knowledgeConnectorSettings, (value) => value.toMap()),
      'languageCode': ?languageCode,
      'name': ?name,
      'parent': ?parent,
      'transitionRouteGroups': ?transitionRouteGroups,
      'transitionRoutes': ?pulumi.Input.mapOptionalInputValue<List<CxPageTransitionRoute>, List<Map<String, dynamic>>>(transitionRoutes, (value) => pulumi.Input.encodeList<CxPageTransitionRoute, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory CxPageState.fromMap(Map<String, dynamic> map) {
    return CxPageState(
      advancedSettings: (() { final guardedValue = map['advancedSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CxPageAdvancedSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      entryFulfillment: (() { final guardedValue = map['entryFulfillment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CxPageEntryFulfillment.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      eventHandlers: (() { final guardedValue = map['eventHandlers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CxPageEventHandler>(guardedValue, (value) => CxPageEventHandler.fromMap((value as Map).cast<String, dynamic>()))); })(),
      form: (() { final guardedValue = map['form']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CxPageForm.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      knowledgeConnectorSettings: (() { final guardedValue = map['knowledgeConnectorSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CxPageKnowledgeConnectorSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      languageCode: (() { final guardedValue = map['languageCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parent: (() { final guardedValue = map['parent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transitionRouteGroups: (() { final guardedValue = map['transitionRouteGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      transitionRoutes: (() { final guardedValue = map['transitionRoutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CxPageTransitionRoute>(guardedValue, (value) => CxPageTransitionRoute.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

