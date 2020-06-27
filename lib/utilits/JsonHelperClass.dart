
class HermesTextCaptured {
  String text;
  double likelihood;
  double seconds;
  String siteId;
  String sessionId;
  String wakewordId;

  HermesTextCaptured(
      {this.text,
      this.likelihood,
      this.seconds,
      this.siteId,
      this.sessionId,
      this.wakewordId});

  HermesTextCaptured.fromJson(Map<String, dynamic> json) {
    text = json['text'];
    if(json['likelihood'] is double){
      likelihood = json['likelihood'];
    } else {
      likelihood = double.parse(json['likelihood'].toString());
    }
    if (json['seconds'] is double){
      seconds = json['seconds'];
    } else {
      seconds = double.parse(json['seconds'].toString());
    }
    
    siteId = json['siteId'];
    sessionId = json['sessionId'];
    wakewordId = json['wakewordId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['text'] = this.text;
    data['likelihood'] = this.likelihood;
    data['seconds'] = this.seconds;
    data['siteId'] = this.siteId;
    data['sessionId'] = this.sessionId;
    data['wakewordId'] = this.wakewordId;
    return data;
  }
}


class HermesNluIntentParsed {
  String input;
  Intent intent;
  String siteId;
  String id;
  List<Slots> slots;
  String sessionId;

  HermesNluIntentParsed(
      {this.input,
      this.intent,
      this.siteId,
      this.id,
      this.slots,
      this.sessionId});

  HermesNluIntentParsed.fromJson(Map<String, dynamic> json) {
    input = json['input'];
    intent =
        json['intent'] != null ? new Intent.fromJson(json['intent']) : null;
    siteId = json['siteId'];
    id = json['id'];
    if (json['slots'] != null) {
      slots = new List<Slots>();
      json['slots'].forEach((v) {
        slots.add(new Slots.fromJson(v));
      });
    }
    sessionId = json['sessionId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['input'] = this.input;
    if (this.intent != null) {
      data['intent'] = this.intent.toJson();
    }
    data['siteId'] = this.siteId;
    data['id'] = this.id;
    if (this.slots != null) {
      data['slots'] = this.slots.map((v) => v.toJson()).toList();
    }
    data['sessionId'] = this.sessionId;
    return data;
  }
}

class Intent {
  String intentName;
  double confidenceScore;

  Intent({this.intentName, this.confidenceScore});

  Intent.fromJson(Map<String, dynamic> json) {
    intentName = json['intentName'];
    confidenceScore = json['confidenceScore'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['intentName'] = this.intentName;
    data['confidenceScore'] = this.confidenceScore;
    return data;
  }
}

class Slots {
  String entity;
  Value value;
  String slotName;
  String rawValue;
  double confidence;
  Range range;

  Slots(
      {this.entity,
      this.value,
      this.slotName,
      this.rawValue,
      this.confidence,
      this.range});

  Slots.fromJson(Map<String, dynamic> json) {
    entity = json['entity'];
    value = json['value'] != null ? new Value.fromJson(json['value']) : null;
    slotName = json['slotName'];
    rawValue = json['rawValue'];
    confidence = json['confidence'];
    range = json['range'] != null ? new Range.fromJson(json['range']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['entity'] = this.entity;
    if (this.value != null) {
      data['value'] = this.value.toJson();
    }
    data['slotName'] = this.slotName;
    data['rawValue'] = this.rawValue;
    data['confidence'] = this.confidence;
    if (this.range != null) {
      data['range'] = this.range.toJson();
    }
    return data;
  }
}

class Value {
  String kind;
  String value;

  Value({this.kind, this.value});

  Value.fromJson(Map<String, dynamic> json) {
    kind = json['kind'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['kind'] = this.kind;
    data['value'] = this.value;
    return data;
  }
}

class Range {
  int start;
  int end;
  int rawStart;
  int rawEnd;

  Range({this.start, this.end, this.rawStart, this.rawEnd});

  Range.fromJson(Map<String, dynamic> json) {
    start = json['start'];
    end = json['end'];
    rawStart = json['rawStart'];
    rawEnd = json['rawEnd'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['start'] = this.start;
    data['end'] = this.end;
    data['rawStart'] = this.rawStart;
    data['rawEnd'] = this.rawEnd;
    return data;
  }
}

class HermesEndSession {
  String sessionId;
  String siteId;
  String text;
  String customData;

  HermesEndSession({this.sessionId, this.siteId, this.text, this.customData});

  HermesEndSession.fromJson(Map<String, dynamic> json) {
    sessionId = json['sessionId'];
    siteId = json['siteId'];
    text = json['text'];
    customData = json['customData'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['sessionId'] = this.sessionId;
    data['siteId'] = this.siteId;
    data['text'] = this.text;
    data['customData'] = this.customData;
    return data;
  }
}

class HermesContinueSession {
  String sessionId;
  String siteId;
  String customData;
  String text;
  List<String> intentFilter;
  bool sendIntentNotRecognized;
  List<Slots> slot;
  String lang;

  HermesContinueSession(
      {this.sessionId,
      this.siteId,
      this.customData,
      this.text,
      this.intentFilter,
      this.sendIntentNotRecognized,
      this.slot,
      this.lang});

  HermesContinueSession.fromJson(Map<String, dynamic> json) {
    sessionId = json['sessionId'];
    siteId = json['siteId'];
    customData = json['customData'];
    text = json['text'];
    if(json['intentFilter'] != null) intentFilter = json['intentFilter'].cast<String>();
    sendIntentNotRecognized = json['sendIntentNotRecognized'];
    if (json['slots'] != null) {
      slot = new List<Slots>();
      json['slots'].forEach((v) {
        slot.add(new Slots.fromJson(v));
      });
    }
    lang = json['lang'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['sessionId'] = this.sessionId;
    data['siteId'] = this.siteId;
    data['customData'] = this.customData;
    data['text'] = this.text;
    data['intentFilter'] = this.intentFilter;
    data['sendIntentNotRecognized'] = this.sendIntentNotRecognized;
    data['slot'] = this.slot;
    data['lang'] = this.lang;
    return data;
  }
}



