access-demomode
toggleRecordButton

	self demoMode screenCast state = DMScreenCast stateIdle ifTrue: [
		(self demoMode screenCast) 
			state: DMScreenCast stateRecording;
			startRecord.
		self screenCastRecordButton label: self class stringStopRecord] 
	ifFalse: [
		self demoMode screenCast state = DMScreenCast stateRecording 			ifTrue: [
				(self demoMode screenCast) 
					state: DMScreenCast stateIdle;
					stopRecord;
					playVideo.
				self screenCastRecordButton label: self class stringStartRecord]]