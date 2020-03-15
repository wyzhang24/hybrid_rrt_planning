// Auto-generated. Do not edit!

// (in-package dbw_mkz_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class DriverAssistReport {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.decel = null;
      this.decel_src = null;
      this.fcw_enabled = null;
      this.fcw_active = null;
      this.aeb_enabled = null;
      this.aeb_precharge = null;
      this.aeb_braking = null;
      this.acc_enabled = null;
      this.acc_braking = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('decel')) {
        this.decel = initObj.decel
      }
      else {
        this.decel = 0.0;
      }
      if (initObj.hasOwnProperty('decel_src')) {
        this.decel_src = initObj.decel_src
      }
      else {
        this.decel_src = 0;
      }
      if (initObj.hasOwnProperty('fcw_enabled')) {
        this.fcw_enabled = initObj.fcw_enabled
      }
      else {
        this.fcw_enabled = false;
      }
      if (initObj.hasOwnProperty('fcw_active')) {
        this.fcw_active = initObj.fcw_active
      }
      else {
        this.fcw_active = false;
      }
      if (initObj.hasOwnProperty('aeb_enabled')) {
        this.aeb_enabled = initObj.aeb_enabled
      }
      else {
        this.aeb_enabled = false;
      }
      if (initObj.hasOwnProperty('aeb_precharge')) {
        this.aeb_precharge = initObj.aeb_precharge
      }
      else {
        this.aeb_precharge = false;
      }
      if (initObj.hasOwnProperty('aeb_braking')) {
        this.aeb_braking = initObj.aeb_braking
      }
      else {
        this.aeb_braking = false;
      }
      if (initObj.hasOwnProperty('acc_enabled')) {
        this.acc_enabled = initObj.acc_enabled
      }
      else {
        this.acc_enabled = false;
      }
      if (initObj.hasOwnProperty('acc_braking')) {
        this.acc_braking = initObj.acc_braking
      }
      else {
        this.acc_braking = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DriverAssistReport
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [decel]
    bufferOffset = _serializer.float32(obj.decel, buffer, bufferOffset);
    // Serialize message field [decel_src]
    bufferOffset = _serializer.uint8(obj.decel_src, buffer, bufferOffset);
    // Serialize message field [fcw_enabled]
    bufferOffset = _serializer.bool(obj.fcw_enabled, buffer, bufferOffset);
    // Serialize message field [fcw_active]
    bufferOffset = _serializer.bool(obj.fcw_active, buffer, bufferOffset);
    // Serialize message field [aeb_enabled]
    bufferOffset = _serializer.bool(obj.aeb_enabled, buffer, bufferOffset);
    // Serialize message field [aeb_precharge]
    bufferOffset = _serializer.bool(obj.aeb_precharge, buffer, bufferOffset);
    // Serialize message field [aeb_braking]
    bufferOffset = _serializer.bool(obj.aeb_braking, buffer, bufferOffset);
    // Serialize message field [acc_enabled]
    bufferOffset = _serializer.bool(obj.acc_enabled, buffer, bufferOffset);
    // Serialize message field [acc_braking]
    bufferOffset = _serializer.bool(obj.acc_braking, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DriverAssistReport
    let len;
    let data = new DriverAssistReport(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [decel]
    data.decel = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [decel_src]
    data.decel_src = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [fcw_enabled]
    data.fcw_enabled = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [fcw_active]
    data.fcw_active = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [aeb_enabled]
    data.aeb_enabled = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [aeb_precharge]
    data.aeb_precharge = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [aeb_braking]
    data.aeb_braking = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [acc_enabled]
    data.acc_enabled = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [acc_braking]
    data.acc_braking = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dbw_mkz_msgs/DriverAssistReport';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '97f55d54ac7adaf52a6882520c5247ff';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    # Vehicle Decceleration (m/s^2)
    float32 decel
    
    # Deceleration source
    uint8 decel_src
    uint8 DECEL_NONE=0
    uint8 DECEL_AEB=1
    uint8 DECEL_ACC=2
    
    # FCW Status
    bool fcw_enabled
    bool fcw_active
    
    # AEB Status
    bool aeb_enabled
    bool aeb_precharge
    bool aeb_braking
    
    # ACC Status
    bool acc_enabled
    bool acc_braking
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    # 0: no frame
    # 1: global frame
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DriverAssistReport(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.decel !== undefined) {
      resolved.decel = msg.decel;
    }
    else {
      resolved.decel = 0.0
    }

    if (msg.decel_src !== undefined) {
      resolved.decel_src = msg.decel_src;
    }
    else {
      resolved.decel_src = 0
    }

    if (msg.fcw_enabled !== undefined) {
      resolved.fcw_enabled = msg.fcw_enabled;
    }
    else {
      resolved.fcw_enabled = false
    }

    if (msg.fcw_active !== undefined) {
      resolved.fcw_active = msg.fcw_active;
    }
    else {
      resolved.fcw_active = false
    }

    if (msg.aeb_enabled !== undefined) {
      resolved.aeb_enabled = msg.aeb_enabled;
    }
    else {
      resolved.aeb_enabled = false
    }

    if (msg.aeb_precharge !== undefined) {
      resolved.aeb_precharge = msg.aeb_precharge;
    }
    else {
      resolved.aeb_precharge = false
    }

    if (msg.aeb_braking !== undefined) {
      resolved.aeb_braking = msg.aeb_braking;
    }
    else {
      resolved.aeb_braking = false
    }

    if (msg.acc_enabled !== undefined) {
      resolved.acc_enabled = msg.acc_enabled;
    }
    else {
      resolved.acc_enabled = false
    }

    if (msg.acc_braking !== undefined) {
      resolved.acc_braking = msg.acc_braking;
    }
    else {
      resolved.acc_braking = false
    }

    return resolved;
    }
};

// Constants for message
DriverAssistReport.Constants = {
  DECEL_NONE: 0,
  DECEL_AEB: 1,
  DECEL_ACC: 2,
}

module.exports = DriverAssistReport;
