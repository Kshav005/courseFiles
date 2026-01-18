import numpy as np

def calculate(data:list):
    data = np.array(data)
    if data.size != 9:
        raise ValueError("List must contain nine numbers.")
    data = data.reshape(3, 3)
    calculations = {
        'mean': [np.mean(data, axis=0).tolist(), np.mean(data, axis=1).tolist(), np.mean(data).item()],
        'variance': [np.var(data, axis=0).tolist(), np.var(data, axis=1).tolist(), np.var(data).item()],
        'standard deviation': [np.std(data, axis=0).tolist(), np.std(data, axis=1).tolist(), np.std(data).item()],
        'max': [np.max(data, axis=0).tolist(), np.max(data, axis=1).tolist(), np.max(data).item()],
        'min': [np.min(data, axis=0).tolist(), np.min(data, axis=1).tolist(), np.min(data).item()],
        'sum': [np.sum(data, axis=0).tolist(), np.sum(data, axis=1).tolist(), np.sum(data).item()]
    }
    return calculations

if __name__ == "__main__":
    sample_data = [0,1,2,3,4,5,6,7,8]
    result = calculate(sample_data)
    print(result)




