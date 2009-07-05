

Java::chat.support.Holder.messages ||= java.util.Collections.synchronizedSortedMap(java.util.TreeMap.new)
Java::chat.support.Holder.clients ||= java.util.Collections.synchronizedMap(java.util.HashMap.new)

$message_storage = Java::chat.support.Holder.messages
$client_queue = Java::chat.support.Holder.clients

