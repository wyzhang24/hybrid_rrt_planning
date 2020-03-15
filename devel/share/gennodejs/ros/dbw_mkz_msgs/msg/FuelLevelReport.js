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

class FuelLevelReport {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.fuel_level = null;
      this.battery_12v = null;
      this.battery_hev = null;
      this.odometer = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('fuel_level')) {
        this.fuel_level = initObj.fuel_level
      }
      else {
        this.fuel_level = 0.0;
      }
      if (initObj.hasOwnProperty('battery_12v')) {
        this.battery_12v = initObj.battery_12v
      }
      else {
        this.battery_12v = 0.0;
      }
      if (initObj.hasOwnProperty('battery_hev')) {
        this.battery_hev = initObj.battery_hev
      }
      else {
        this.battery_hev = 0.0;
      }
      if (initObj.hasOwnProperty('odometer')) {
        this.odometer = initObj.odometer
      }
      else {
        this.odometer = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FuelLevelReport
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [fuel_level]
    bufferOffset = _serializer.float32(obj.fuel_level, buffer, bufferOffset);
    // Serialize message field [battery_12v]
    bufferOffset = _serializer.float32(obj.battery_12v, buffer, bufferOffset);
    // Serialize message field [battery_hev]
    bufferOffset = _serializer.float32(obj.battery_hev, buffer, bufferOffset);
    // Serialize message field [odometer]
    bufferOffset = _serializer.float32(obj.odometer, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FuelLevelReport
    let len;
    let data = new FuelLevelReport(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [fuel_level]
    data.fuel_level = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [battery_12v]
    data.battery_12v = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [battery_hev]
    data.battery_hev = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [odometer]
    data.odometer = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dbw_mkz_msgs/FuelLevelReport';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f937217d0b14552d7365d7cdca64a7ff';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    # Fuel level (%, 0 to 100)
    float32 fuel_level
    
    # 12V battery voltage
    float32 battery_12v
    
    # Hybrid battery voltage
    float32 battery_hev
    
    # Odometer (km, 0.1km resolution)
    float32 odometer
    
    
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
    const resolved = new FuelLevelReport(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.fuel_level !== undefined) {
      resolved.fuel_level = msg.fuel_level;
    }
    else {
      resolved.fuel_level = 0.0
    }

    if (msg.battery_12v !== undefined) {
      resolved.battery_12v = msg.battery_12v;
    }
    else {
      resolved.battery_12v = 0.0
    }

    if (msg.battery_hev !== undefined) {
      resolved.battery_hev = msg.battery_hev;
    }
    else {
      resolved.battery_hev = 0.0
    }

    if (msg.odometer !== undefined) {
      resolved.odometer = msg.odometer;
    }
    else {
      resolved.odometer = 0.0
    }

    return resolved;
    }
};

module.exports = FuelLevelReport;
