<?xml version="1.0" encoding="utf-8"?>
<?AutomationStudio Version=4.2.2.134?>
<SwConfiguration CpuAddress="SL1" xmlns="http://br-automation.co.at/AS/SwConfiguration">
  <TaskClass Name="Cyclic#1" />
  <TaskClass Name="Cyclic#2" />
  <TaskClass Name="Cyclic#3" />
  <TaskClass Name="Cyclic#4">
    <Task Name="Excavator" Source="Excavator.prg" Memory="UserROM" Language="ANSIC" Debugging="true" />
    <Task Name="Conveyor" Source="Conveyor.prg" Memory="UserROM" Language="ANSIC" Debugging="true" />
    <Task Name="FeederBunk" Source="FeederBunker.prg" Memory="UserROM" Language="ANSIC" Debugging="true" />
    <Task Name="Mixer" Source="Mixer.prg" Memory="UserROM" Language="ANSIC" Debugging="true" />
    <Task Name="GrinderCla" Source="GrinderClay.prg" Memory="UserROM" Language="ANSIC" Debugging="true" />
    <Task Name="PressScrew" Source="PressScrew.prg" Memory="UserROM" Language="ANSIC" Debugging="true" />
    <Task Name="Control" Source="Control.prg" Memory="UserROM" Language="ANSIC" Debugging="true" />
  </TaskClass>
</SwConfiguration>