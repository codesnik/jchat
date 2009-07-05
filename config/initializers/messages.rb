

Java::chat.support.Holder.messages ||= java.util.Collections.synchronizedSortedMap(java.util.TreeMap.new)
Java::chat.support.Holder.notifications ||= java.util.Collections.synchronizedList(java.util.LinkedList.new)

$message_storage = Java::chat.support.Holder.messages
$client_queue = Java::chat.support.Holder.notifications

