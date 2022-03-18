SELECT 
    ROUND(
	ISNULL(
		CAST((SELECT COUNT(*) FROM (SELECT DISTINCT requester_id, accepter_id FROM RequestAccepted) RA) AS DECIMAL) 
		/
		NULLIF((SELECT COUNT(*) FROM (SELECT DISTINCT sender_id, send_to_id FROM FriendRequest) FR), 0)
	, 0)
    , 2) accept_rate;
