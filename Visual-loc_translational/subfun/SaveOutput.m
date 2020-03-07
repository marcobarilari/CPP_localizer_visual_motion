function SaveOutput(subjectName, Cfg, ExpParameters, input)

switch input
    
    case 'open'
        
        % Initialize txt logfiles
        if ~exist('logfiles','dir')
            mkdir('logfiles')
        end
        
        % % % ADD SESSION AND RUN NUMBER
        BlockTxtLogFile = fopen(fullfile('logfiles',[subjectName,'_Blocks.txt']),'w');
        fprintf(BlockTxtLogFile,'%12s  %12s %12s %12s %12s \n', ...
            'BlockNumber', ...
            'Condition', ...
            'Onset', ...
            'End', ...
            'Duration');
        
        EventTxtLogFile = fopen(fullfile('logfiles',[subjectName,'_Events.txt']),'w');
        fprintf(EventTxtLogFile,'%12s %12s %12s %18s %12s %12s %12s %12s \n', ...
            'BlockNumber', ...
            'EventNumber', ...
            'Direction', ...
            'IsFixationTarget', ...
            'Speed', ...
            'Onset', ...
            'End', ...
            'Duration');
        
        if ExpParameters.Task1
            ResponsesTxtLogFile = fopen(fullfile('logfiles',[subjectName,'_Responses.txt']),'w');
            fprintf(ResponsesTxtLogFile,'%12s \n', ...
                'Responses');
        end
        
    case 'save'
        
end